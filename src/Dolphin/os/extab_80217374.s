.section extab, "a"
.balign 4
.global etb_8000A268
etb_8000A268:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000A268, 8

.section extabindex, "a"
.balign 4
.global eti_80017EE4
eti_80017EE4:
    .4byte fn_80217374
    .4byte 0x00000110
    .4byte etb_8000A268
.size eti_80017EE4, 12

.text
.balign 4
.global fn_80217374

# fn_80217374(state, angle) - a randomized left/right zigzag-wander
# sub-state-machine, called by fn_801C79A0 (extab_801c79a0.s) as
# fn_80217374(&this->0x550, this->0x33c), storing the result back
# into this->0x33c (the actor's facing angle). state is a 3-field
# struct: +0x0 = phase (0 = neutral, 1 = veering left, 2 = veering
# right), +0x4 = elapsed-frame counter (incremented every call),
# +0x8 = randomized phase duration (via CONFIRMED fn_801CD664 PRNG
# wrapper, reference_fsa_global_prng.md). While the counter hasn't
# reached the duration yet, the input angle passes through
# unchanged. On reaching it: from neutral, a coin-flip picks a new
# veer direction (jittering angle by +-0x4000, i.e. a 90-degree
# snap) and a new randomized duration (fn_801CD664(0x3d)+0x3c);
# from a veering phase, it un-jitters angle back the opposite way,
# resets to neutral, and picks a shorter randomized duration
# (fn_801CD664(1)+0xb4).
fn_80217374:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    mr 30, 4
    lwz 4, 0x4(3)
    mr 3, 30
    addi 0, 4, 0x1
    stw 0, 0x4(31)
    lwz 4, 0x4(31)
    lwz 0, 0x8(31)
    cmpw 4, 0
    .4byte 0x418000C0 # blt .L_8021746C
    lwz 0, 0x0(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802173CC
    .4byte 0x418000B0 # blt .L_8021746C
    cmpwi 0, 0x3
    .4byte 0x408000A8 # bge .L_8021746C
    .4byte 0x4800006C # b .L_80217434
L_802173CC:
    li 3, 0x2
    bl fn_801CD664
    cmpwi 3, 0x0
    .4byte 0x40820030 # bne .L_80217408
    li 3, 0x3d
    bl fn_801CD664
    addi 3, 3, 0x3c
    subi 0, 30, 0x4000
    stw 3, 0x8(31)
    li 5, 0x1
    li 4, 0x0
    extsh 3, 0
    stw 5, 0x0(31)
    stw 4, 0x4(31)
    .4byte 0x48000068 # b .L_8021746C
L_80217408:
    li 3, 0x3d
    bl fn_801CD664
    addi 3, 3, 0x3c
    addi 0, 30, 0x4000
    stw 3, 0x8(31)
    li 5, 0x2
    li 4, 0x0
    extsh 3, 0
    stw 5, 0x0(31)
    stw 4, 0x4(31)
    .4byte 0x4800003C # b .L_8021746C
L_80217434:
    li 3, 0x1
    bl fn_801CD664
    addi 0, 3, 0xb4
    stw 0, 0x8(31)
    lwz 0, 0x0(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_8021745C
    addi 0, 30, 0x4000
    extsh 3, 0
    .4byte 0x48000008 # b .L_80217460
L_8021745C:
    subi 3, 30, 0x4000
L_80217460:
    li 0, 0x0
    stw 0, 0x0(31)
    stw 0, 0x4(31)
L_8021746C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
