/*
 * NEW ACTOR (vtable lbl_804A6708). Calls the unconfirmed zero-arg
 * fn_801CE120(), then while state==9 clamps this->0x14 (Y position) to
 * a ceiling constant (an altitude cap during whatever state 9 is -
 * likely the "orbit/wind-up" phase, see fn_8021E4F8).
 *
 * Attempted real-C++ promotion (2 variants: inline comparison operands;
 * named y/ceiling locals): retail assigns f1=field(y), f0=const to the
 * comparison and store; MWCC always assigns the OPPOSITE (f0=field,
 * f1=const) regardless of phrasing, unlike the superficially-identical
 * fn_801D8980 case where the plain-inline fix worked. Confirmed a
 * distinct instance of the register-role wall - reverted to raw asm.
 */
.section extab, "a"
.balign 4
.global etb_8000A48C
etb_8000A48C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A48C, 8

.section extabindex, "a"
.balign 4
.global eti_800181FC
eti_800181FC:
    .4byte fn_8021D9D4
    .4byte 0x0000004C
    .4byte etb_8000A48C
.size eti_800181FC, 12

.text
.balign 4
.global fn_8021D9D4

fn_8021D9D4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801CE120
    lwz 0, 0x248(31)
    cmpwi 0, 0x9
    .4byte 0x40820018 # bne .L_8021DA0C
    lfs 1, 0x14(31)
    .4byte 0xC002CDC4 # lfs f0, lbl_8053FD64@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_8021DA0C
    stfs 0, 0x14(31)
L_8021DA0C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
