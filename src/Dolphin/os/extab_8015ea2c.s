/*
 * FLME actor cluster, part 4/6 - trigger/retire dispatcher. Track A
 * (byte-exact asm) + structural overview.
 *
 * fn_8015EA2C(this): a computed jump table (jumptable_804A0384, 9
 * entries) on this->0x230 (state), called both from setParams (part
 * 5/6) and every frame from the update() wrapper (part 2/6).
 *
 * Several early states gate a VIRTUAL method call (vtable slot 0x34,
 * the same "am I visible/active" check every function in this cluster
 * makes) to toggle this->0x240 or force a transition to state 4 when
 * this->0x94==6. One state calls fn_801EEC98 (an 8-arg config query,
 * unconfirmed) and compares 2 output floats against thresholds to
 * decide whether to arm (this->0x240) or advance. Another state, once
 * this->0x260 drops below a threshold, retires ONE of FLME's 4 effect
 * slots (the confirmed cull idiom), fires cue 0x361 on the first
 * retirement, spawns a replacement effect using a per-orientation code
 * looked up from a NEW table (lbl_80539F70, 2 entries per orientation),
 * and transitions to state 5. Two near-identical later blocks check
 * this->0x244 and, if set, invoke a DIFFERENT virtual method (vtable
 * slot 0x30) with args (0xff, 1), clearing this->0x11c - a two-phase
 * toggling virtual callback trigger once this->0x234 has fully expired.
 */
.section extab, "a"
.balign 4
.global etb_80007014
etb_80007014:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_80007014, 8

.section extabindex, "a"
.balign 4
.global eti_80013BAC
eti_80013BAC:
    .4byte fn_8015EA2C
    .4byte 0x000003C8
    .4byte etb_80007014
.size eti_80013BAC, 12

.text
.balign 4
.global fn_8015EA2C

fn_8015EA2C:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC002A64C # lfs f0, lbl_8053D5EC@sda21(r0)
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    mr 31, 3
    stfs 0, 0xc(1)
    lwz 0, 0x230(3)
    cmplwi 0, 0x8
    .4byte 0x41810390 # bgt .L_8015EDE0
    lis 4, jumptable_804A0384@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A0384@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_8015EAD0
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_8015EAB0
    lhz 0, 0x94(31)
    cmplwi 0, 0x4
    .4byte 0x4182000C # beq .L_8015EAA4
    cmplwi 0, 0x5
    .4byte 0x40820010 # bne .L_8015EAB0
L_8015EAA4:
    mr 3, 31
    li 4, 0x3
    bl fn_801F0D20
L_8015EAB0:
    li 0, 0x0
    stw 0, 0x240(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x6
    .4byte 0x40820320 # bne .L_8015EDE0
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48000314 # b .L_8015EDE0
L_8015EAD0:
    li 0, 0x1
    stw 0, 0x240(31)
    .4byte 0x48000308 # b .L_8015EDE0
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8015EB00
    li 0, 0x1
    stw 0, 0x240(31)
    .4byte 0x480002E4 # b .L_8015EDE0
L_8015EB00:
    li 0, 0x0
    stw 0, 0x240(31)
    .4byte 0x480002D8 # b .L_8015EDE0
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8015EB38
    li 3, 0x0
    li 0, 0x4
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x480002AC # b .L_8015EDE0
L_8015EB38:
    lwz 4, 0x198(31)
    mr 3, 31
    addi 6, 1, 0x8
    addi 7, 1, 0xc
    li 5, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820030 # bne .L_8015EB94
    lwz 0, 0x8(1)
    cmpwi 0, 0x0
    .4byte 0x41800270 # blt .L_8015EDE0
    lfs 1, 0xc(1)
    .4byte 0xC002A670 # lfs f0, lbl_8053D610@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082025C # bne .L_8015EDE0
    li 0, 0x1
    stw 0, 0x240(31)
    .4byte 0x48000250 # b .L_8015EDE0
L_8015EB94:
    lwz 0, 0x8(1)
    cmpwi 0, 0x0
    .4byte 0x41800244 # blt .L_8015EDE0
    lfs 1, 0xc(1)
    .4byte 0xC002A674 # lfs f0, lbl_8053D614@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820230 # bne .L_8015EDE0
    li 3, 0x8
    li 0, 0x0
    stw 3, 0x234(31)
    stw 0, 0x240(31)
    .4byte 0x4800021C # b .L_8015EDE0
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8015EBF4
    li 3, 0x0
    li 0, 0x4
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x480001F0 # b .L_8015EDE0
L_8015EBF4:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_8015EC20
    cmpwi 0, 0x1
    .4byte 0x408201DC # bne .L_8015EDE0
    li 3, 0x0
    li 0, 0xb4
    stw 3, 0x238(31)
    stw 3, 0x240(31)
    stw 0, 0x23c(31)
    .4byte 0x480001C4 # b .L_8015EDE0
L_8015EC20:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x408201B8 # bne .L_8015EDE0
    li 3, 0x78
    li 0, 0x1
    stw 3, 0x238(31)
    stw 0, 0x240(31)
    .4byte 0x480001A4 # b .L_8015EDE0
    li 28, 0x0
    .4byte 0xC002A604 # lfs f0, lbl_8053D5A4@sda21(r0)
    stw 28, 0x240(31)
    lfs 1, 0x260(31)
    fcmpo cr0, 1, 0
    .4byte 0x4080018C # bge .L_8015EDE0
    mr 27, 31
    li 5, 0x0
    li 26, 0x0
    lis 30, 0x3
    li 29, 0x1
L_8015EC6C:
    lwz 4, 0x264(27)
    cmplwi 4, 0x0
    .4byte 0x41820034 # beq .L_8015ECA8
    lwz 3, 0xf4(4)
    clrlwi. 0, 5, 24
    ori 0, 3, 0x1
    stw 0, 0xf4(4)
    stw 29, 0x24(4)
    stw 28, 0x264(27)
    .4byte 0x40820018 # bne .L_8015ECA8
    mr 3, 31
    addi 4, 30, 0x61
    li 5, 0x0
    bl fn_801F0E34
    li 5, 0x1
L_8015ECA8:
    addi 26, 26, 0x1
    addi 27, 27, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FFB8 # blt .L_8015EC6C
    lwz 0, 0x98(31)
    .4byte 0x38AD83B0 # li r5, lbl_80539F70@sda21
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 1
    .4byte 0xC022A5FC # lfs f1, lbl_8053D59C@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x264(31)
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x480000E8 # b .L_8015EDE0
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x418200DC # beq .L_8015EDE0
    lwz 12, 0x0(3)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480000B8 # b .L_8015EDE0
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x418200AC # beq .L_8015EDE0
    lwz 12, 0x0(3)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000088 # b .L_8015EDE0
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082007C # bne .L_8015EDE0
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_8015EDAC
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x41820064 # beq .L_8015EDE0
    lwz 12, 0x0(3)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 3, 0x8
    li 0, 0x1
    stw 3, 0x234(31)
    stw 0, 0x248(31)
    .4byte 0x48000038 # b .L_8015EDE0
L_8015EDAC:
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8015EDE0
    lwz 12, 0x0(3)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 3, 0x8
    li 0, 0x0
    stw 3, 0x234(31)
    stw 0, 0x248(31)
L_8015EDE0:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

