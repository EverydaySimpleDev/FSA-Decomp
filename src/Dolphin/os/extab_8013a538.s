.section extab, "a"
.balign 4
.global etb_80006A74
etb_80006A74:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_80006A74, 8

.section extabindex, "a"
.balign 4
.global eti_8001333C
eti_8001333C:
    .4byte fn_8013A538
    .4byte 0x0000034C
    .4byte etb_80006A74
.size eti_8001333C, 12

# fn_8013A538(this, resourceHandle) - THE REAL CONSTRUCTOR for the
# "this->0x4" class (paired with dtor_8013A27C - same vtable
# `lbl_8049F080` assigned/reset, same 11 member fields allocated/
# destroyed). CRITICALLY, also assigns `lbl_8053AB00 = this` - the 2nd
# manager global the destructor tears down - confirming this class is
# ALSO a singleton, just like the Scene Manager assigns `lbl_8053AAF8`.
#
# Allocates its 11 member sub-objects one at a time via
# `fn_8008440C(size, resourceHandle, 0)` with a per-slot fallback
# constructor (this->0xc=0x3290B/fn_802DE64C, this->0x4=0x74B/
# fn_8023F8B0, this->0x8=0x3060B/fn_801F9078, this->0x10=0x28B/
# fn_802A3E2C, this->0x14=0x2c0B/fn_8043F504, this->0x18=0x60B/
# fn_80439C78, this->0x1c=0x10B/fn_8037B0B8, this->0x20=0x7f0B/
# fn_801917E0, this->0x24=0x1f8B/fn_8016F0BC) - matching the field set
# `dtor_8013A27C` tears down field-for-field.
#
# Then a SPECIAL block for this->0x30/0x2c, gated on the EXACT SAME
# pending-transition condition `fn_80139D9C` checks (boot-config->
# 0x118==9 && ->0x11c==3) OR a 2nd one (->0x118==8 && ->0x11c==2): if
# either holds, SPAWNS A REAL OS THREAD via `fn_800814D4(0x86470, this,
# 0)` (the same thread-creation helper `main()` itself uses) into
# this->0x30. If thread creation FAILS (returns null), does a one-time-
# latched (`lbl_8053AB08`/`lbl_8053AB04`) DEBUG WARNING via `OSReport`
# with a real format string (`lbl_80465920` on first failure,
# `lbl_80465960` on subsequent ones) reporting elapsed time since the
# last successful tick - genuine debug diagnostics for a failed
# background-thread spawn, left compiled into the retail binary. If
# thread creation SUCCEEDED, closes/reopens the resource manager
# (`fn_8008382C(this)`) and allocates one more member (this->0x2c, 0x18
# bytes, fallback `fn_8044BDCC`). If NEITHER transition condition held,
# this->0x30=this->0x2c=0 (no thread spawned at all).
#
# Together with `fn_80139D9C`'s save-shaped per-player data capture (also
# gated on the SAME `->0x118==9,->0x11c==3` condition), this strongly
# confirms this whole class is a **background save/checkpoint worker**:
# constructed and given a real OS thread only during specific save-
# triggering scene transitions, with genuine failure diagnostics if the
# thread can't be created.
.text
.balign 4
.global fn_8013A538

fn_8013A538:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    lis 5, lbl_8049F080@ha
    mr 30, 3
    addi 0, 5, lbl_8049F080@l
    mr 31, 4
    stw 0, 0x0(3)
    mr 3, 31
    .4byte 0x93ED8F40 # stw r31, lbl_8053AB00@sda21(r0)
    bl fn_80083A68
    lis 3, 0x1
    mr 4, 31
    addi 3, 3, 0x3290
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_8013A598
    bl fn_802DE64C
    mr 0, 3
L_8013A598:
    stw 0, 0xc(30)
    mr 3, 31
    bl fn_80083A68
    mr 4, 31
    li 3, 0x74
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_8013A5C4
    bl fn_8023F8B0
    mr 0, 3
L_8013A5C4:
    stw 0, 0x4(30)
    mr 3, 31
    bl fn_80083A68
    mr 4, 31
    li 3, 0x3060
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820010 # beq .L_8013A5F4
    mr 4, 31
    bl fn_801F9078
    mr 0, 3
L_8013A5F4:
    stw 0, 0x8(30)
    mr 3, 31
    bl fn_80083A68
    mr 4, 31
    li 3, 0x28
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_8013A620
    bl fn_802A3E2C
    mr 0, 3
L_8013A620:
    stw 0, 0x10(30)
    mr 3, 31
    bl fn_80083A68
    mr 3, 31
    bl fn_80083A68
    mr 4, 31
    li 3, 0x2c0
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_8013A654
    bl fn_8043F504
    mr 0, 3
L_8013A654:
    stw 0, 0x14(30)
    mr 3, 31
    bl fn_80083A68
    mr 4, 31
    li 3, 0x60
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_8013A680
    bl fn_80439C78
    mr 0, 3
L_8013A680:
    stw 0, 0x18(30)
    mr 3, 31
    bl fn_80083A68
    mr 4, 31
    li 3, 0x10
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_8013A6AC
    bl fn_8037B0B8
    mr 0, 3
L_8013A6AC:
    stw 0, 0x1c(30)
    mr 3, 31
    bl fn_80083A68
    mr 4, 31
    li 3, 0x7f0
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820010 # beq .L_8013A6DC
    mr 4, 31
    bl fn_801917E0
    mr 0, 3
L_8013A6DC:
    stw 0, 0x20(30)
    mr 3, 31
    bl fn_80083A68
    mr 4, 31
    li 3, 0x1f8
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820010 # beq .L_8013A70C
    mr 4, 31
    bl fn_8016F0BC
    mr 0, 3
L_8013A70C:
    lis 3, lbl_80529DEC@ha
    stw 0, 0x24(30)
    addi 3, 3, lbl_80529DEC@l
    lwz 4, 0x118(3)
    cmpwi 4, 0x9
    .4byte 0x40820010 # bne .L_8013A730
    lwz 0, 0x11c(3)
    cmpwi 0, 0x3
    .4byte 0x41820020 # beq .L_8013A74C
L_8013A730:
    cmpwi 4, 0x8
    .4byte 0x40820120 # bne .L_8013A854
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x4082010C # bne .L_8013A854
L_8013A74C:
    lis 3, 0x8
    mr 4, 31
    addi 3, 3, 0x6470
    li 5, 0x0
    bl fn_800814D4
    stw 3, 0x30(30)
    lwz 0, 0x30(30)
    cmplwi 0, 0x0
    .4byte 0x408200A8 # bne .L_8013A814
    .4byte 0x880D8F48 # lbz r0, lbl_8053AB08@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820014 # bne .L_8013A78C
    li 3, 0x0
    li 0, 0x1
    .4byte 0x906D8F44 # stw r3, lbl_8053AB04@sda21(r0)
    .4byte 0x980D8F48 # stb r0, lbl_8053AB08@sda21(r0)
L_8013A78C:
    .4byte 0x800D8F44 # lwz r0, lbl_8053AB04@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40820090 # bne .L_8013A824
    li 0, 0x1
    mr 3, 31
    .4byte 0x900D8F44 # stw r0, lbl_8053AB04@sda21(r0)
    bl fn_80083A68
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0xc(1)
    mr 3, 31
    .4byte 0xC8429E30 # lfd f2, lbl_8053CDD0@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC0029E28 # lfs f0, lbl_8053CDC8@sda21(r0)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 31, 1, 0
    bl fn_80083A3C
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x14(1)
    lis 3, lbl_80465920@ha
    .4byte 0xC8829E30 # lfd f4, lbl_8053CDD0@sda21(r0)
    fmr 3, 31
    stw 0, 0x10(1)
    addi 3, 3, lbl_80465920@l
    .4byte 0xC0029E28 # lfs f0, lbl_8053CDC8@sda21(r0)
    lfd 2, 0x10(1)
    .4byte 0xC8229E20 # lfd f1, lbl_8053CDC0@sda21(r0)
    fsubs 2, 2, 4
    fmuls 2, 2, 0
    crset 6
    bl OSReport
    .4byte 0x48000014 # b .L_8013A824
L_8013A814:
    lis 3, lbl_80465960@ha
    addi 3, 3, lbl_80465960@l
    crclr 6
    bl OSReport
L_8013A824:
    mr 3, 31
    bl fn_8008382C
    mr 4, 31
    li 3, 0x18
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_8013A84C
    bl fn_8044BDCC
    mr 0, 3
L_8013A84C:
    stw 0, 0x2c(30)
    .4byte 0x48000010 # b .L_8013A860
L_8013A854:
    li 0, 0x0
    stw 0, 0x30(30)
    stw 0, 0x2c(30)
L_8013A860:
    mr 3, 30
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

