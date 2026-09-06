.section extab, "a"
.balign 4
.global etb_80009EE8
etb_80009EE8:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80009EE8, 8

.section extabindex, "a"
.balign 4
.global eti_800179A4
eti_800179A4:
    .4byte fn_8020CCA8
    .4byte 0x000002D4
    .4byte etb_80009EE8
.size eti_800179A4, 12

.text
.balign 4
.global fn_8020CCA8

# fn_8020CCA8(this) - TINK's real draw(), the richest of the 3 methods.
# Early-returns entirely if this->0x248==0 ("should I draw" mode gate,
# same field the setParams/dtor also touch). Builds the standard
# shared material struct, then a SPECIAL CASE when this->0x248==0xe
# (mode 14): a squared-distance check (via paired-single ps_mul/
# ps_madd/ps_sum0 against a threshold constant) that, if within range,
# builds a secondary "trail/wake" effect struct from this->0x54/0x58/
# 0x5c (a facing/velocity vector) with default color/scale constants.
# Picks a model variant (r29: 7 normally, 0 if fn_8022461C(this+0xc,
# this->0x4) returns FourCC 0x39-tagged), then if this->0x138==0,
# draws via the CONFIRMED universal render primitive fn_801EF830.
#
# Branches on this->0x4 (owner ID) exactly like OKTA's draw (see
# project_fsa_okta_actor_progress.md):
#  - this->0x4 < 8 (normal): fires a sound/effect via the resource
#    manager's vtable slot 0x18 (lbl_8053AAF8->0xa4, the "PEFF"-family
#    call from project_fsa_core_systems_gap.md), then draws via the
#    CONFIRMED spatial-triad helper fn_802F86CC using the camera
#    manager's ambient light-probe grid (lbl_8053AB10->0x20).
#  - this->0x4 == 8 (the SAME "captured/attached" sentinel OKTA uses):
#    computes a position via fn_801CD0D0(this+0xc, &buf) then draws via
#    the CONFIRMED render primitive fn_801EF574 - a 2nd confirmed user
#    of the this->0x4==8 "picked up and carried" convention.
# Always finishes with fn_803075AC(this->0x198, this->0x4, this+0xc,
# mode=2, ...) - now fully decompiled (see extab_803075ac.s): registers
# a per-player "shadow/carry-marker" slot for whichever player
# currently tracks TINK as its ownerID, the SAME helper OKTA's draw
# calls, confirmed reused verbatim by a 2nd distinct actor.
fn_8020CCA8:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stw 31, 0x9c(1)
    stw 30, 0x98(1)
    mr 30, 3
    stw 29, 0x94(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    .4byte 0x41820294 # beq .L_8020CF60
    li 0, -0x1
    addi 9, 1, 0x4c
    stw 0, 0x5c(1)
    li 10, 0x0
    stw 0, 0x60(1)
    .4byte 0x48000064 # b .L_8020CD48
L_8020CCE8:
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
L_8020CD48:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8020CCE8
    li 5, 0x0
    li 4, 0x1
    stb 5, 0x79(1)
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x5c(1)
    stw 5, 0x60(1)
    stw 5, 0x64(1)
    stb 5, 0x68(1)
    stb 5, 0x69(1)
    stb 5, 0x6a(1)
    stb 4, 0x6b(1)
    stb 4, 0x6c(1)
    stb 5, 0x6d(1)
    stb 5, 0x6e(1)
    stb 5, 0x6f(1)
    stb 5, 0x70(1)
    stb 5, 0x71(1)
    stb 4, 0x72(1)
    stw 3, 0x74(1)
    stb 4, 0x78(1)
    stb 5, 0x7a(1)
    stw 6, 0x7c(1)
    stw 5, 0x80(1)
    stw 0, 0x84(1)
    stb 4, 0x79(1)
    lwz 0, 0x248(30)
    cmpwi 0, 0xe
    .4byte 0x40820078 # bne .L_8020CE40
    psq_l 4, 0x54(30), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 3, 0x5c(30)
    ps_mul 4, 4, 4
    .4byte 0xC022CA60 # lfs f1, lbl_8053FA00@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 3, 3, 4
    fmuls 0, 1, 0
    ps_sum0 2, 2, 4, 4
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x41820168 # beq .L_8020CF60
    .4byte 0xC022CA64 # lfs f1, lbl_8053FA04@sda21(r0)
    addi 0, 1, 0x1c
    stfs 1, 0x28(1)
    stfs 1, 0x38(1)
    stfs 1, 0x48(1)
    lfs 2, 0x58(30)
    lfs 0, 0x54(30)
    stfs 0, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 1, 0x24(1)
    stfs 1, 0x2c(1)
    stfs 2, 0x30(1)
    stfs 1, 0x34(1)
    stfs 1, 0x3c(1)
    stfs 1, 0x40(1)
    stfs 3, 0x44(1)
    stw 0, 0x64(1)
L_8020CE40:
    lwz 4, 0x280(30)
    mr 3, 30
    li 29, 0x7
    addi 31, 4, 0xc0
    bl fn_801E1D7C
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8020CE78
    lwz 4, 0x4(30)
    addi 3, 30, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x39
    .4byte 0x40820008 # bne .L_8020CE78
    li 29, 0x0
L_8020CE78:
    lwz 0, 0x138(30)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_8020CEA8
    lis 4, lbl_8046A3C0@ha
    lwz 3, 0x4(30)
    addi 7, 4, lbl_8046A3C0@l
    mr 6, 29
    mr 8, 31
    addi 4, 30, 0xc
    addi 5, 1, 0x4c
    li 9, 0x0
    bl fn_801EF830
L_8020CEA8:
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_8020CF00
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046A3C0@ha
    addi 5, 3, lbl_8046A3C0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022CA68 # lfs f1, lbl_8053FA08@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 31
    fmr 2, 1
    addi 7, 1, 0x4c
    lwz 3, 0x20(4)
    addi 4, 30, 0xc
    bl fn_802F86CC
L_8020CF00:
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x40820028 # bne .L_8020CF30
    addi 3, 30, 0xc
    addi 4, 1, 0x10
    bl fn_801CD0D0
    lis 3, lbl_8046A3C0@ha
    mr 4, 31
    addi 3, 3, lbl_8046A3C0@l
    addi 5, 1, 0x10
    addi 6, 1, 0x4c
    bl fn_801EF574
L_8020CF30:
    li 0, 0x0
    mr 6, 31
    stw 0, 0x8(1)
    addi 5, 30, 0xc
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x1
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    bl fn_803075AC
L_8020CF60:
    lwz 0, 0xa4(1)
    lwz 31, 0x9c(1)
    lwz 30, 0x98(1)
    lwz 29, 0x94(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

