/*
 * WARP-portal-actor cluster, part 3/12.
 *
 * fn_801EDC0C(this, otherPtr): integrates a velocity (returned by
 * fn_801D6CEC(this+0x52c, &tmp), a sub-object accessor) into this->0xc/
 * 0x10/0x14 (position) - a small idle "bob"/physics step. If
 * this->0x248==0xb (a specific idle state) and this->0x24c (a frame
 * counter) has run for >=60 frames, additionally oscillates this->0xc by
 * a constant (lbl_8053F718) every-other-2-frames via a cheap mod-4 trick
 * on the counter - a periodic wobble.
 *
 * Then checks room validity via the confirmed fn_801CD2F8 ("room<8")
 * idiom on this->0x4: if valid, draws via the shared model-draw helper
 * fn_801F02BC(this, &lbl_80469D30, otherPtr, scale=lbl_8053F718, 0, -1, 0,
 * 0) (fn_801F02BC referenced but not yet decompiled itself, see
 * project_fsa_zlda_actor_progress.md); if NOT in a valid room, instead
 * calls fn_801EDD0C(this) - the off-screen icon/cleanup path (part 4/12).
 */
.section extab, "a"
.balign 4
.global etb_80008D2C
etb_80008D2C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008D2C, 8

.section extabindex, "a"
.balign 4
.global eti_8001639C
eti_8001639C:
    .4byte fn_801EDC0C
    .4byte 0x00000100
    .4byte etb_80008D2C
.size eti_8001639C, 12

.text
.balign 4
.global fn_801EDC0C

fn_801EDC0C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    addi 4, 1, 0x8
    stw 30, 0x18(1)
    mr 30, 3
    addi 3, 30, 0x52c
    bl fn_801D6CEC
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x8(1), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x10(1), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lwz 0, 0x248(30)
    cmpwi 0, 0xb
    .4byte 0x40820050 # bne .L_801EDCAC
    lwz 3, 0x24c(30)
    cmpwi 3, 0x3c
    .4byte 0x41800044 # blt .L_801EDCAC
    slwi 0, 3, 30
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 2
    add 0, 0, 3
    cmpwi 0, 0x2
    .4byte 0x40800018 # bge .L_801EDC9C
    lfs 1, 0xc(30)
    .4byte 0xC002C778 # lfs f0, lbl_8053F718@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(30)
    .4byte 0x48000014 # b .L_801EDCAC
L_801EDC9C:
    lfs 1, 0xc(30)
    .4byte 0xC002C778 # lfs f0, lbl_8053F718@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(30)
L_801EDCAC:
    lwz 3, 0x4(30)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_801EDCEC
    .4byte 0xC022C778 # lfs f1, lbl_8053F718@sda21(r0)
    lis 3, lbl_80469D30@ha
    addi 4, 3, lbl_80469D30@l
    mr 5, 31
    fmr 2, 1
    mr 3, 30
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    .4byte 0x4800000C # b .L_801EDCF4
L_801EDCEC:
    mr 3, 30
    bl fn_801EDD0C
L_801EDCF4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

