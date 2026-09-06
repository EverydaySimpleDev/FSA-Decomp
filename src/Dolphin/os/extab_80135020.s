.section extab, "a"
.balign 4
.global etb_8000697C
etb_8000697C:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000697C, 8

.section extabindex, "a"
.balign 4
.global eti_800131C8
eti_800131C8:
    .4byte fn_80135020
    .4byte 0x000002D4
    .4byte etb_8000697C
.size eti_800131C8, 12

# fn_80135020(this, moduleIdx) - a jumptable-driven (jumptable_8049EF2C,
# real compiler jumptable) CORE ENGINE SUBSYSTEM lazy-constructor
# dispatcher: dispatches on `moduleIdx` (0-0xc; out-of-range is a no-op),
# and each observed case follows the IDENTICAL "lazy singleton" shape:
#   - skip if the corresponding field on `this` is already non-null.
#   - fn_80083A94(this->0x98, 1) -> acquire some resource/lock handle
#     (this->0x98 looks like a shared resource-manager/heap handle).
#   - fn_8008440C(<fixed size>, handle, 0) -> allocate a block of that
#     size; if allocation returns null, fall back to calling a SPECIFIC
#     constructor function directly instead (each case has ITS OWN
#     fallback constructor).
#   - store the result into `this`'s field for that case.
#   - fn_80083A94(this->0x98, result) -> release/register the handle.
#
# Cases observed (field offset on `this`, object size, fallback ctor):
#   0 (this->0x4,  0x38  bytes, fn_8013A538) - additionally calls
#     fn_8013BE04(lbl_8053AB10) (the CONFIRMED shared camera/cutscene
#     manager) and GetRoomConfigRecord() (the shared effect-subsystem callee seen
#     throughout the actor sweep) using 2 alternate field-pairs read from
#     the boot-config struct (lbl_80529DEC->0x118/0x11c or ->0x128/0x12c,
#     selected by the CURRENT SCENE OBJECT's ->0x7f byte), then
#     fn_8013A1A4(this->0x4) - this case is clearly constructing something
#     that ties the boot config, the cutscene manager, and the shared
#     effect/registry subsystem together (a "scene effect registry"?).
#   1 (this->0x1c, 0x20  bytes, fn_8037A8D4)
#   2 (this->0x20, 0x158 bytes, fn_803A59E0), also clears this->0x87(byte)
#   3 (this->0x28, 0x120 bytes, fn_803DFF40)
#   4 (this->0x24, 0x1ac bytes, fn_803D0264)
#   5 (this->0x2c, 0x10  bytes, fn_803A8884)
#   6 (this->0x30, 0x10  bytes, fn_8039027C)
#
# This is one of the strongest "core systems" candidates found so far in
# this gap - it's the actual per-module subsystem construction table a
# top-level manager calls to lazily bring up each engine subsystem on
# first use. None of the specific fallback constructors are decompiled
# yet; their sizes/call shapes are the only evidence of what they are.
.text
.balign 4
.global fn_80135020

fn_80135020:
    stwu 1, -0x20(1)
    mflr 0
    cmplwi 4, 0xc
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    .4byte 0x41810298 # bgt .L_801352D8
    lis 3, jumptable_8049EF2C@ha
    slwi 0, 4, 2
    addi 3, 3, jumptable_8049EF2C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x4(31)
    cmplwi 0, 0x0
    .4byte 0x40820274 # bne .L_801352D8
    lwz 4, 0x98(31)
    li 3, 0x38
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820010 # beq .L_8013508C
    lwz 4, 0x98(31)
    bl fn_8013A538
    mr 0, 3
L_8013508C:
    stw 0, 0x4(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BE04
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_801350C8
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 30, 0x11c(3)
    lwz 29, 0x118(3)
    bl GetRoomConfigRecord
    stw 29, 0x4(3)
    stw 30, 0x8(3)
    .4byte 0x48000020 # b .L_801350E4
L_801350C8:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 29, 0x12c(3)
    lwz 30, 0x128(3)
    bl GetRoomConfigRecord
    stw 30, 0x4(3)
    stw 29, 0x8(3)
L_801350E4:
    lwz 3, 0x4(31)
    bl fn_8013A1A4
    .4byte 0x480001EC # b .L_801352D8
    lwz 0, 0x1c(31)
    cmplwi 0, 0x0
    .4byte 0x408201E0 # bne .L_801352D8
    lwz 3, 0x98(31)
    li 4, 0x1
    bl fn_80083A94
    lwz 4, 0x98(31)
    mr 29, 3
    li 3, 0x20
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_8013512C
    bl fn_8037A8D4
    mr 0, 3
L_8013512C:
    stw 0, 0x1c(31)
    mr 4, 29
    lwz 3, 0x98(31)
    bl fn_80083A94
    bl fn_80139958
    .4byte 0x48000198 # b .L_801352D8
    lwz 0, 0x20(31)
    cmplwi 0, 0x0
    .4byte 0x4082018C # bne .L_801352D8
    lwz 3, 0x98(31)
    li 4, 0x1
    bl fn_80083A94
    lwz 4, 0x98(31)
    mr 29, 3
    li 3, 0x158
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_80135180
    bl fn_803A59E0
    mr 0, 3
L_80135180:
    stw 0, 0x20(31)
    mr 4, 29
    lwz 3, 0x98(31)
    bl fn_80083A94
    li 0, 0x0
    stb 0, 0x87(31)
    .4byte 0x48000140 # b .L_801352D8
    lwz 0, 0x28(31)
    cmplwi 0, 0x0
    .4byte 0x40820134 # bne .L_801352D8
    lwz 3, 0x98(31)
    li 4, 0x1
    bl fn_80083A94
    lwz 4, 0x98(31)
    mr 29, 3
    li 3, 0x120
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_801351D8
    bl fn_803DFF40
    mr 0, 3
L_801351D8:
    stw 0, 0x28(31)
    mr 4, 29
    lwz 3, 0x98(31)
    bl fn_80083A94
    .4byte 0x480000F0 # b .L_801352D8
    lwz 0, 0x24(31)
    cmplwi 0, 0x0
    .4byte 0x408200E4 # bne .L_801352D8
    lwz 3, 0x98(31)
    li 4, 0x1
    bl fn_80083A94
    lwz 4, 0x98(31)
    mr 29, 3
    li 3, 0x1ac
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_80135228
    bl fn_803D0264
    mr 0, 3
L_80135228:
    stw 0, 0x24(31)
    mr 4, 29
    lwz 3, 0x98(31)
    bl fn_80083A94
    .4byte 0x480000A0 # b .L_801352D8
    lwz 0, 0x2c(31)
    cmplwi 0, 0x0
    .4byte 0x40820094 # bne .L_801352D8
    lwz 3, 0x98(31)
    li 4, 0x1
    bl fn_80083A94
    lwz 4, 0x98(31)
    mr 29, 3
    li 3, 0x10
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_80135278
    bl fn_803A8884
    mr 0, 3
L_80135278:
    stw 0, 0x2c(31)
    mr 4, 29
    lwz 3, 0x98(31)
    bl fn_80083A94
    .4byte 0x48000050 # b .L_801352D8
    lwz 0, 0x30(31)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_801352D8
    lwz 3, 0x98(31)
    li 4, 0x1
    bl fn_80083A94
    lwz 4, 0x98(31)
    mr 29, 3
    li 3, 0x10
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_801352C8
    bl fn_8039027C
    mr 0, 3
L_801352C8:
    stw 0, 0x30(31)
    mr 4, 29
    lwz 3, 0x98(31)
    bl fn_80083A94
L_801352D8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

