# Vtable body for a THIRD real FourCC actor (vtable lbl_804B1A48) whose
# ctor (fn_80200C5C, already landed - calls base ctor Actor_ctor then
# installs this vtable) sits in the actor-ctor-dispatch region.
# fn_80442C64: dtor - trivial, base-chain only (dtor_801F593C/
# dtor_80084580), no per-field cleanup.
# fn_80443064: Init() - reads a per-instance player index (this->0x90>>28,
# the universal spawn-parameter field), queries fn_802308E0(playerIdx) (a
# bool - likely "is this player active"), clears this->0x11c if false, then
# resets a small state machine (this->0x230=0, this->0x234=1).
# fn_80442CC4: update() - a per-state (this->0x230: 0/1/3+) dispatcher that
# queries the player's controller-pad state via fn_8030AAF4(playerIdx) then
# checks specific button-held bitmasks via fn_80309D24/fn_80309D6C (0x400/
# 0x100/0x200/0x2), toggling a visibility flag (this->0x11c) and a per-
# player HUD byte (lbl_8053AED0-relative, offset 0x1f0) - consistent with a
# per-player "press this button" input-prompt HUD actor. Not traced to
# fn_8030AAF4/fn_80309D24/fn_80309D6C's exact button-code meanings (out of
# scope for this landing).
.section extab, "a"
.balign 4
.global etb_800111F4
etb_800111F4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800111F4, 8

.global etb_800111FC
etb_800111FC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800111FC, 8

.global etb_80011204
etb_80011204:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80011204, 8

.section extabindex, "a"
.balign 4
.global eti_800210E8
eti_800210E8:
    .4byte fn_80442C64
    .4byte 0x00000060
    .4byte etb_800111F4
.size eti_800210E8, 12

.global eti_800210F4
eti_800210F4:
    .4byte fn_80442CC4
    .4byte 0x000003A0
    .4byte etb_800111FC
.size eti_800210F4, 12

.global eti_80021100
eti_80021100:
    .4byte fn_80443064
    .4byte 0x00000054
    .4byte etb_80011204
.size eti_80021100, 12

.text
.balign 4
.global fn_80442C64
.global fn_80442CC4
.global fn_80443064

fn_80442C64:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80442CA8
    lis 5, lbl_804B1A48@ha
    li 4, 0x0
    addi 0, 5, lbl_804B1A48@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80442CA8
    mr 3, 30
    bl dtor_80084580
L_80442CA8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80442CC4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lwz 0, 0x230(3)
    lwz 3, 0x90(3)
    cmpwi 0, 0x1
    srwi 30, 3, 28
    .4byte 0x41820298 # beq .L_80442F84
    .4byte 0x40800010 # bge .L_80442D00
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80442D0C
    .4byte 0x48000350 # b .L_8044304C
L_80442D00:
    cmpwi 0, 0x3
    .4byte 0x40800348 # bge .L_8044304C
    .4byte 0x48000300 # b .L_80443008
L_80442D0C:
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x400
    bl fn_80309D24
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_80442D74
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_80442D74
    .4byte 0x800D9310 # lwz r0, lbl_8053AED0@sda21(r0)
    li 6, 0x2
    mr 3, 30
    li 4, 0x0
    add 5, 0, 30
    stb 6, 0x1f0(5)
    bl fn_8023061C
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480002DC # b .L_8044304C
L_80442D74:
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D24
    cmplwi 3, 0x0
    .4byte 0x4182010C # beq .L_80442E9C
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x200
    bl fn_80309D24
    cmplwi 3, 0x0
    .4byte 0x41820078 # beq .L_80442E28
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x2
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80442DE4
    lwz 3, 0x234(31)
    addi 0, 3, 0x64
    stw 0, 0x234(31)
    .4byte 0x4800012C # b .L_80442F0C
L_80442DE4:
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x1
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x4182010C # beq .L_80442F0C
    lwz 3, 0x234(31)
    cmplwi 3, 0x64
    .4byte 0x40810010 # ble .L_80442E1C
    subi 0, 3, 0x64
    stw 0, 0x234(31)
    .4byte 0x480000F4 # b .L_80442F0C
L_80442E1C:
    li 0, 0x1
    stw 0, 0x234(31)
    .4byte 0x480000E8 # b .L_80442F0C
L_80442E28:
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x2
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80442E58
    lwz 3, 0x234(31)
    addi 0, 3, 0xa
    stw 0, 0x234(31)
    .4byte 0x480000B8 # b .L_80442F0C
L_80442E58:
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x1
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820098 # beq .L_80442F0C
    lwz 3, 0x234(31)
    cmplwi 3, 0xa
    .4byte 0x40810010 # ble .L_80442E90
    subi 0, 3, 0xa
    stw 0, 0x234(31)
    .4byte 0x48000080 # b .L_80442F0C
L_80442E90:
    li 0, 0x1
    stw 0, 0x234(31)
    .4byte 0x48000074 # b .L_80442F0C
L_80442E9C:
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x2
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80442ECC
    lwz 3, 0x234(31)
    addi 0, 3, 0x1
    stw 0, 0x234(31)
    .4byte 0x48000044 # b .L_80442F0C
L_80442ECC:
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x1
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80442F0C
    lwz 3, 0x234(31)
    cmplwi 3, 0x1
    .4byte 0x40810010 # ble .L_80442F04
    subi 0, 3, 0x1
    stw 0, 0x234(31)
    .4byte 0x4800000C # b .L_80442F0C
L_80442F04:
    li 0, 0x1
    stw 0, 0x234(31)
L_80442F0C:
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x20
    bl fn_80309D24
    cmplwi 3, 0x0
    .4byte 0x41820124 # beq .L_8044304C
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x20
    bl fn_80309D24
    cmplwi 3, 0x0
    .4byte 0x41820104 # beq .L_8044304C
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x418200E4 # beq .L_8044304C
    li 0, 0x1
    mr 3, 30
    stw 0, 0x230(31)
    li 4, 0x0
    bl fn_8023061C
    .4byte 0x480000CC # b .L_8044304C
L_80442F84:
    lwz 4, 0x4(31)
    mr 3, 30
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    cmpw 3, 30
    .4byte 0x408200A4 # bne .L_8044304C
    lwz 5, 0x198(31)
    addi 7, 1, 0x8
    lwz 6, 0x4(31)
    mr 3, 30
    psq_l 1, 0xc(31), 0, 0
    li 8, 0x10
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x10(1)
    lwz 4, 0x234(31)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80442FEC
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000064 # b .L_8044304C
L_80442FEC:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x2
    li 0, 0x0
    add 3, 3, 30
    stb 4, 0x1f0(3)
    stb 0, 0x11c(31)
    .4byte 0x48000048 # b .L_8044304C
L_80443008:
    lwz 4, 0x4(31)
    mr 3, 30
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 4, 0x198(31)
    mr 3, 30
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8044304C
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x2
    li 0, 0x0
    add 3, 3, 30
    stb 4, 0x1f0(3)
    stb 0, 0x11c(31)
L_8044304C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80443064:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x90(3)
    srwi 3, 0, 28
    bl fn_802308E0
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80443094
    li 0, 0x0
    stb 0, 0x11c(31)
L_80443094:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x230(31)
    stw 0, 0x234(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

