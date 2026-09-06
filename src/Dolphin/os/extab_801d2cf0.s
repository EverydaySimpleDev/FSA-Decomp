/*
 * fn_801D2CF0 (0x801D2CF0-0x801D2D38, 0x48/72 bytes) - a method of "ClassX" (the class
 * whose base destructor just landed as dtor_801D2C60 - see
 * project_fsa_multiple_inheritance_pattern.md). Copies a 2-float position (from arg r4)
 * into this->0x3c/0x40, sets this->0x44 to a constant (lbl_8053F068), then calls
 * fn_801CF0F4 (unidentified) and caches its return value into this->0x98 (a handle) - a
 * "remember a target position and acquire a handle" setup shape.
 *
 * Attempted real-C++ promotion (2 variants: direct inline field writes;
 * named x/y locals computed before the prologue's r31 save): retail
 * loads x and y into f0/f1 interleaved with the prologue (x before the
 * LR save, y after), then stores x, reloads the const into f0, stores
 * y, stores const - MWCC always computes y BEFORE x regardless of
 * declaration order (same "second local computed first" quirk seen
 * elsewhere this session) and never reproduces the interleaved
 * store/reload order. Reverted to raw asm.
 */

.section extab, "a"
.balign 4
.global etb_80008550
etb_80008550:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008550, 8

.section extabindex, "a"
.balign 4
.global eti_800158E0
eti_800158E0:
    .4byte fn_801D2CF0
    .4byte 0x00000048
    .4byte etb_80008550
.size eti_800158E0, 12

.text
.balign 4
.global fn_801D2CF0

fn_801D2CF0:
    stwu 1, -0x10(1)
    mflr 0
    lfs 0, 0x0(4)
    stw 0, 0x14(1)
    lfs 1, 0x4(4)
    stw 31, 0xc(1)
    mr 31, 3
    stfs 0, 0x3c(3)
    .4byte 0xC002C0C8 # lfs f0, lbl_8053F068@sda21(r0)
    stfs 1, 0x40(3)
    stfs 0, 0x44(3)
    bl fn_801CF0F4
    stw 3, 0x98(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
