/*
 * fn_801D8430(this) (0x801D8430-0x801D84E0, 0xB0/176 bytes) - a REAL VIRTUAL
 * CALL through this object's own vtable slot 0x2c/4=11. If the call returns
 * true: triggers the SAME recurring "camera/cutscene cue manager" this
 * session already confirmed in dtor_801D46FC's class (fn_801D47DC,
 * extab_801d47dc.s) - identical global `lbl_8053AB10->0x24` sub-offsets
 * (0x840/0x84c/0x844/0x850/0x848/0x854/0x1d4/0x1d8, the SAME one-shot-latch
 * shape) plus the SAME `lbl_8053AB10->0x20->0x216=1` flag write - proving this
 * cue-trigger utility is a genuinely shared, class-independent engine
 * primitive, not specific to dtor_801D46FC's class family. If the virtual
 * call returns false: calls fn_801CDD58(this) instead - the shared
 * base-class update() dispatcher, now landed (extab_801cdd58.s),
 * confirmed reused by 40 distinct actor vtables including ROPE.
 */

.section extab, "a"
.balign 4
.global etb_80008734
etb_80008734:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008734, 8

.section extabindex, "a"
.balign 4
.global eti_80015B20
eti_80015B20:
    .4byte fn_801D8430
    .4byte 0x000000B0
    .4byte etb_80008734
.size eti_80015B20, 12

.text
.balign 4
.global fn_801D8430

fn_801D8430:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022C22C # lfs f1, lbl_8053F1CC@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xC042C230 # lfs f2, lbl_8053F1D0@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC062C234 # lfs f3, lbl_8053F1D4@sda21(r0)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_801D84C4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801D84B0
    li 0, 0x1
    .4byte 0xC022C238 # lfs f1, lbl_8053F1D8@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002C23C # lfs f0, lbl_8053F1DC@sda21(r0)
    lfs 2, 0xc(31)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x10(31)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801D84B0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x20(3)
    stb 0, 0x216(3)
    .4byte 0x4800000C # b .L_801D84CC
L_801D84C4:
    mr 3, 31
    bl fn_801CDD58
L_801D84CC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

