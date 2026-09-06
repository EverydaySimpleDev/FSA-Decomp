.section extab, "a"
.balign 4
.global etb_80006A6C
etb_80006A6C:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80006A6C, 8

.section extabindex, "a"
.balign 4
.global eti_80013330
eti_80013330:
    .4byte fn_8013A27C
    .4byte 0x000002BC
    .4byte etb_80006A6C
.size eti_80013330, 12

# dtor_8013A27C(this, flag) - THE REAL DESTRUCTOR for the "this->0x4"
# class the Scene Manager owns (all the fn_80139BE8/C5C/C84/CC4/D3C/D70/
# D9C/8013A1A4 methods landed just before this belong to it). Resets
# vtable to lbl_8049F080, then calls fn_8013A884(&localBuf) where
# localBuf is a STACK-LOCAL 4-byte buffer set to 0xFFFFFF00 (NOT `this` -
# corrected after landing fn_8013A884 itself, which turned out to be a
# "write a literal 4-byte code into the cutscene manager's +0x2c
# sub-object" utility, i.e. this resets that sub-object's own code field
# to a sentinel on teardown), the standard SDK-thread/heap cleanup pair
# (fn_8013C824->0xc + fn_800EC188, same shape seen in the Scene Manager's
# own constructor), conditionally clears boot-config->0x24b, then
# virtual-destroys (`+0x8`, arg=1) and nulls
# EVERY one of this class's 11 member fields (this->0x2c/0x30/0x24/0x20/
# 0x1c/0x18/0x14/0x10/0x8/0x4/0xc) - interleaved with `fn_80083A68`
# (OS-tick) queries against a 2nd manager global `lbl_8053AB00` (not seen
# referenced elsewhere yet). ALSO virtual-destroys+nulls 2 GLOBAL
# boot-config-owned manager pointers (->0x10 and ->0x4c) - this
# destructor's teardown cascades into 2 shared managers, not just its own
# members. Finally conditionally chains dtor_80084580(this) if the
# caller-supplied flag is truthy.
.text
.balign 4
.global fn_8013A27C

fn_8013A27C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr. 30, 3
    stw 29, 0x14(1)
    .4byte 0x4182027C # beq .L_8013A518
    lis 3, lbl_8049F080@ha
    li 0, -0x100
    addi 4, 3, lbl_8049F080@l
    addi 3, 1, 0x8
    stw 4, 0x0(30)
    stw 0, 0x8(1)
    bl fn_8013A884
    bl fn_8013C824
    lwz 3, 0xc(3)
    bl fn_800EC188
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x24b(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8013A2E4
    li 0, 0x0
    stb 0, 0x24b(3)
L_8013A2E4:
    lwz 3, 0x2c(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8013A310
    .4byte 0x41820018 # beq .L_8013A308
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8013A308:
    li 0, 0x0
    stw 0, 0x2c(30)
L_8013A310:
    lwz 3, 0x30(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8013A328
    bl fn_800839B8
    lwz 3, 0x30(30)
    bl fn_8008383C
L_8013A328:
    .4byte 0x806D8F40 # lwz r3, lbl_8053AB00@sda21(r0)
    bl fn_80083A68
    lwz 3, 0x24(30)
    li 4, 0x1
    bl fn_8016EE84
    li 0, 0x0
    stw 0, 0x24(30)
    .4byte 0x806D8F40 # lwz r3, lbl_8053AB00@sda21(r0)
    bl fn_80083A68
    lwz 3, 0x20(30)
    li 4, 0x1
    bl fn_80191744
    li 0, 0x0
    stw 0, 0x20(30)
    .4byte 0x806D8F40 # lwz r3, lbl_8053AB00@sda21(r0)
    bl fn_80083A68
    lwz 3, 0x1c(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8013A388
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8013A388:
    li 0, 0x0
    stw 0, 0x1c(30)
    .4byte 0x806D8F40 # lwz r3, lbl_8053AB00@sda21(r0)
    bl fn_80083A68
    lwz 3, 0x18(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8013A3B8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8013A3B8:
    li 0, 0x0
    stw 0, 0x18(30)
    .4byte 0x806D8F40 # lwz r3, lbl_8053AB00@sda21(r0)
    bl fn_80083A68
    lwz 3, 0x14(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8013A3E8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8013A3E8:
    li 0, 0x0
    stw 0, 0x14(30)
    .4byte 0x806D8F40 # lwz r3, lbl_8053AB00@sda21(r0)
    bl fn_80083A68
    lwz 3, 0x10(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8013A418
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8013A418:
    li 0, 0x0
    stw 0, 0x10(30)
    .4byte 0x806D8F40 # lwz r3, lbl_8053AB00@sda21(r0)
    bl fn_80083A68
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8013A448
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8013A448:
    li 0, 0x0
    stw 0, 0x8(30)
    .4byte 0x806D8F40 # lwz r3, lbl_8053AB00@sda21(r0)
    bl fn_80083A68
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8013A478
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8013A478:
    li 0, 0x0
    stw 0, 0x4(30)
    .4byte 0x806D8F40 # lwz r3, lbl_8053AB00@sda21(r0)
    bl fn_80083A68
    lwz 3, 0xc(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8013A4A8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8013A4A8:
    li 0, 0x0
    lis 3, lbl_80529DEC@ha
    stw 0, 0xc(30)
    addi 29, 3, lbl_80529DEC@l
    lwz 3, 0x10(29)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8013A4DC
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x10(29)
L_8013A4DC:
    lis 3, lbl_80529DEC@ha
    addi 29, 3, lbl_80529DEC@l
    lwz 3, 0x4c(29)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8013A508
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x4c(29)
L_8013A508:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8013A518
    mr 3, 30
    bl dtor_80084580
L_8013A518:
    lwz 0, 0x24(1)
    mr 3, 30
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

