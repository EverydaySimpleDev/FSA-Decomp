/*
 * fn_801D4BAC(this) (0x801D4BAC-0x801D4C70, 0xC4/196 bytes) - dtor_801D46FC's class's
 * per-frame movement driver. First tail-calls fn_801D4C70 (landed alongside this file,
 * extab_801d4c70.s) to (re)compute the velocity pair this->0x3c/0x40, THEN
 * overwrites this->0x44 (a separate speed/rate field) based on the SAME this->0x248
 * state field: state==1 -> constant `lbl_8053F0E0`, state==6 -> `lbl_8053F0E4`,
 * state==8 -> this->0x44 += `lbl_8053F0E8` (accelerate), else -> `lbl_8053F0C8`
 * (a recurring "base speed" constant seen across this class's sibling methods).
 *
 * Separately, if state==5: steps a stored facing angle (this->0x5d4, a halfword,
 * += 0x300 with wraparound) and looks it up in the CONFIRMED shared anchor table
 * `lbl_8052EBC0` (already established this session as a shared direction-vector
 * table) to advance this->0x14 (self position Z) - a circular/orbiting motion step.
 */

.section extab, "a"
.balign 4
.global etb_800085C8
etb_800085C8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800085C8, 8

.section extabindex, "a"
.balign 4
.global eti_80015994
eti_80015994:
    .4byte fn_801D4BAC
    .4byte 0x000000C4
    .4byte etb_800085C8
.size eti_80015994, 12

.text
.balign 4
.global fn_801D4BAC

fn_801D4BAC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D4C70
    lwz 0, 0x248(31)
    cmpwi 0, 0x6
    .4byte 0x4182002C # beq .L_801D4BF8
    .4byte 0x40800010 # bge .L_801D4BE0
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_801D4BEC
    .4byte 0x4800003C # b .L_801D4C18
L_801D4BE0:
    cmpwi 0, 0x8
    .4byte 0x41820020 # beq .L_801D4C04
    .4byte 0x48000030 # b .L_801D4C18
L_801D4BEC:
    .4byte 0xC002C140 # lfs f0, lbl_8053F0E0@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x4800002C # b .L_801D4C20
L_801D4BF8:
    .4byte 0xC002C144 # lfs f0, lbl_8053F0E4@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x48000020 # b .L_801D4C20
L_801D4C04:
    lfs 1, 0x44(31)
    .4byte 0xC002C148 # lfs f0, lbl_8053F0E8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x44(31)
    .4byte 0x4800000C # b .L_801D4C20
L_801D4C18:
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    stfs 0, 0x44(31)
L_801D4C20:
    lwz 0, 0x248(31)
    cmpwi 0, 0x5
    .4byte 0x40820034 # bne .L_801D4C5C
    lha 4, 0x5d4(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC042C150 # lfs f2, lbl_8053F0F0@sda21(r0)
    addi 0, 4, 0x300
    .4byte 0xC002C14C # lfs f0, lbl_8053F0EC@sda21(r0)
    sth 0, 0x5d4(31)
    lha 0, 0x5d4(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0x14(31)
L_801D4C5C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

