/*
 * NEW ACTOR (vtable lbl_804A6708). Calls the unconfirmed fn_801CE0A4(),
 * then computes a height-scaled volume value into this->0x2b8: while
 * state==9, ramps from a min to a max based on this->0x14 (Y position),
 * clamped; otherwise uses the max directly. Refreshes two looping SFX
 * handles (this->0x2d0/0x2d4) at this->0xc via the confirmed
 * fn_8013CB44, then writes the computed volume (as an int8) into each
 * active handle's byte field 0xbb. Reads as height-based volume fade
 * for two looping sounds tied to an airborne/orbit state.
 */
.section extab, "a"
.balign 4
.global etb_8000A49C
etb_8000A49C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A49C, 8

.section extabindex, "a"
.balign 4
.global eti_80018214
eti_80018214:
    .4byte fn_8021DB24
    .4byte 0x00000120
    .4byte etb_8000A49C
.size eti_80018214, 12

.text
.balign 4
.global fn_8021DB24

fn_8021DB24:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    bl fn_801CE0A4
    lwz 0, 0x248(31)
    cmpwi 0, 0x9
    .4byte 0x4082004C # bne .L_8021DB90
    lfs 2, 0x14(31)
    .4byte 0xC002CDE0 # lfs f0, lbl_8053FD80@sda21(r0)
    .4byte 0xC022CDE4 # lfs f1, lbl_8053FD84@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0xC002CDBC # lfs f0, lbl_8053FD5C@sda21(r0)
    fmuls 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_8021DB70
    fmr 1, 0
    .4byte 0x48000014 # b .L_8021DB80
L_8021DB70:
    .4byte 0xC002CDB8 # lfs f0, lbl_8053FD58@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8021DB80
    fmr 1, 0
L_8021DB80:
    .4byte 0xC002CDE8 # lfs f0, lbl_8053FD88@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x2b8(31)
    .4byte 0x4800000C # b .L_8021DB98
L_8021DB90:
    .4byte 0xC002CDE8 # lfs f0, lbl_8053FD88@sda21(r0)
    stfs 0, 0x2b8(31)
L_8021DB98:
    lwz 0, 0x248(31)
    li 7, 0x0
    cmpwi 0, 0x9
    .4byte 0x41820008 # beq .L_8021DBAC
    .4byte 0x48000008 # b .L_8021DBB0
L_8021DBAC:
    li 7, 0x1
L_8021DBB0:
    lwz 3, 0x2d0(31)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, -0x1
    bl fn_8013CB44
    lwz 0, 0x248(31)
    li 7, 0x0
    cmpwi 0, 0x9
    .4byte 0x41820008 # beq .L_8021DBD8
    .4byte 0x48000008 # b .L_8021DBDC
L_8021DBD8:
    li 7, 0x1
L_8021DBDC:
    lwz 3, 0x2d4(31)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, -0x1
    bl fn_8013CB44
    lwz 3, 0x2d0(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8021DC10
    lfs 0, 0x2b8(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    stb 0, 0xbb(3)
L_8021DC10:
    lwz 3, 0x2d4(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8021DC30
    lfs 0, 0x2b8(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    stb 0, 0xbb(3)
L_8021DC30:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

