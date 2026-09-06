.section extab, "a"
.balign 4
.global etb_80008838
etb_80008838:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_80008838, 8

.section extabindex, "a"
.balign 4
.global eti_80015C88
eti_80015C88:
    .4byte fn_801DB9CC
    .4byte 0x00000320
    .4byte etb_80008838
.size eti_80015C88, 12

.text
.balign 4
.global fn_801DB9CC

# fn_801DB9CC(this) - "randomize free-roam drift pattern" setup for this
# class's chase-or-free-roam FSM. Called from fn_801DB950's newState==1 case
# (and effectively self-contained as the one-time-init companion routine to
# fn_801DB6C8's this->0x16c==-1 check - both branch on the SAME sentinel).
#
# 1. 50/50 coin flip (fn_801CD664(2)) toggles bit 0x2000 of this->0x230
#    (a facing/mirror flag).
# 2. Randomizes a decay-rate constant into this->0x2d8 (fn_801CD664(0x1f)
#    biased/scaled via the 0x4330.... int-to-double trick), zeroes
#    this->0x2de, and randomizes an initial facing angle into this->0x2dc
#    via fn_801CD664(1).
# 3. FIRST-TIME init only (this->0x16c==-1):
#    - If the current velocity (this->0x2b4/0x2b8) magnitude is below a
#      small threshold, picks a random rotated direction from the shared
#      anchor table lbl_8052EBC0, but at the LARGER bank offsets +0x3000/
#      +0x3004 or +0x1000/+0x1004 (selected by the same bit 0x2000 flag) -
#      this reveals lbl_8052EBC0 has multiple offset "banks" beyond the
#      small per-direction offsets used elsewhere this session.
#    - Otherwise derives the angle directly from the current drift vector
#      via fn_80093340.
#    - A further 50/50 flip (fn_801CD664(2)) can negate the resulting
#      direction vector (mirrors it).
#    - Stores the resulting angle into this->0x2dc, and a frsqrte-normalized
#      magnitude-derived rate into this->0x2de.
# 4. Unconditionally recomputes a position delta from lbl_8052EBC0's normal
#    (small-offset) entry for the CURRENT this->0x2dc angle, scaled by
#    this->0x2d4, and adds it to this->0xc/0x10 (self position), storing the
#    result into this->0x2bc/0x2c0, then mirrors that into this->0x2c4/0x2c8
#    (the "free-roam anchor" fields also seeded by fn_801DB6C8).
# 5. FIRST-TIME init only (this->0x16c==-1): seeds this->0x2cc/0x2d0 (the
#    free-roam VELOCITY) by resolving the global singleton's tracked
#    position via fn_801DAC6C()+fn_801DACAC() and subtracting it from the
#    just-computed anchor (this->0x2c4/0x2c8) - this matches and extends
#    fn_801DB6C8's own one-time-init logic exactly, confirming the two
#    functions are companion halves of the same first-use setup.
# 6. Randomizes this->0x2b0 (the search-tier parameter fn_801D05F8 reads)
#    among 3 named float constants via fn_801CD664(3), UNLESS not yet
#    initialized (this->0x16c==-1), in which case it uses a 4th, neutral
#    constant instead.
fn_801DB9CC:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    mr 31, 3
    li 3, 0x2
    bl fn_801CD664
    cmpwi 3, 0x0
    .4byte 0x40820014 # bne .L_801DBA10
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 19, 17
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_801DBA1C
L_801DBA10:
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
L_801DBA1C:
    li 3, 0x1f
    bl fn_801CD664
    addi 3, 3, 0x1e
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x18(1)
    .4byte 0xC822C380 # lfd f1, lbl_8053F320@sda21(r0)
    li 0, 0x0
    stw 3, 0x1c(1)
    lis 3, 0x1
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    stfs 0, 0x2d8(31)
    sth 0, 0x2de(31)
    bl fn_801CD664
    sth 3, 0x2dc(31)
    lwz 0, 0x16c(31)
    cmpwi 0, -0x1
    .4byte 0x40820160 # bne .L_801DBBC4
    lfs 5, 0x2b4(31)
    lis 3, lbl_80539D44@ha
    lfs 4, 0x2b8(31)
    fmuls 3, 5, 5
    .4byte 0xC022C35C # lfs f1, lbl_8053F2FC@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    fmuls 2, 4, 4
    fmuls 0, 1, 0
    fadds 1, 3, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    mfcr 0
    extrwi. 0, 0, 1, 2
    .4byte 0x40820128 # bne .L_801DBBC4
    .4byte 0xC002C344 # lfs f0, lbl_8053F2E4@sda21(r0)
    fcmpo cr0, 5, 0
    .4byte 0x40800034 # bge .L_801DBADC
    lis 3, lbl_8052EBC0@ha
    lwz 0, 0x230(31)
    addi 3, 3, lbl_8052EBC0@l
    lfs 2, 0x3004(3)
    ori 0, 0, 0x2000
    lfs 3, 0x3000(3)
    fmuls 0, 4, 2
    fmuls 1, 4, 3
    stw 0, 0x230(31)
    fmadds 30, 5, 3, 0
    fmsubs 31, 5, 2, 1
    .4byte 0x48000030 # b .L_801DBB08
L_801DBADC:
    lis 3, lbl_8052EBC0@ha
    lwz 0, 0x230(31)
    addi 3, 3, lbl_8052EBC0@l
    lfs 2, 0x1004(3)
    rlwinm 0, 0, 0, 19, 17
    lfs 3, 0x1000(3)
    fmuls 0, 4, 2
    fmuls 1, 4, 3
    stw 0, 0x230(31)
    fmadds 30, 5, 3, 0
    fmsubs 31, 5, 2, 1
L_801DBB08:
    li 3, 0x2
    bl fn_801CD664
    cmpwi 3, 0x0
    .4byte 0x40820018 # bne .L_801DBB2C
    lwz 0, 0x230(31)
    fneg 31, 31
    fneg 30, 30
    xori 0, 0, 0x2000
    stw 0, 0x230(31)
L_801DBB2C:
    fmr 1, 31
    lis 3, lbl_80534C00@ha
    fmr 2, 30
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC042C368 # lfs f2, lbl_8053F308@sda21(r0)
    .4byte 0xC002C344 # lfs f0, lbl_8053F2E4@sda21(r0)
    fmuls 1, 1, 2
    fctiwz 1, 1
    stfd 1, 0x18(1)
    lwz 0, 0x1c(1)
    sth 0, 0x2dc(31)
    lfs 2, 0x2b4(31)
    lfs 1, 0x2b8(31)
    fmuls 2, 2, 2
    fmuls 1, 1, 1
    fadds 4, 2, 1
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801DBB80
    .4byte 0x48000028 # b .L_801DBBA4
L_801DBB80:
    frsqrte 3, 4
    .4byte 0xC042C34C # lfs f2, lbl_8053F2EC@sda21(r0)
    .4byte 0xC002C364 # lfs f0, lbl_8053F304@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_801DBBA4:
    .4byte 0xC002C370 # lfs f0, lbl_8053F310@sda21(r0)
    .4byte 0xC022C36C # lfs f1, lbl_8053F30C@sda21(r0)
    fmuls 0, 0, 4
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    sth 0, 0x2de(31)
L_801DBBC4:
    lha 0, 0x2dc(31)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    lfs 2, 0x2d4(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0xc(31)
    add 3, 4, 0
    lfsx 1, 4, 0
    lfs 3, 0x4(3)
    fneg 1, 1
    stfs 0, 0x2bc(31)
    fneg 3, 3
    lfs 0, 0x10(31)
    fmuls 1, 1, 2
    fmuls 3, 3, 2
    stfs 0, 0x2c0(31)
    lfs 0, 0x2bc(31)
    fadds 0, 0, 1
    stfs 0, 0x2bc(31)
    lfs 0, 0x2c0(31)
    fadds 0, 0, 3
    stfs 0, 0x2c0(31)
    lfs 0, 0x2bc(31)
    stfs 0, 0x2c4(31)
    lfs 0, 0x2c0(31)
    stfs 0, 0x2c8(31)
    lwz 0, 0x16c(31)
    cmpwi 0, -0x1
    .4byte 0x4082008C # bne .L_801DBCC0
    bl fn_801DAC6C
    addi 4, 1, 0x8
    bl fn_801DACAC
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_801DBC7C
    lfs 0, 0x2c4(31)
    stfs 0, 0x2cc(31)
    lfs 0, 0x2c8(31)
    stfs 0, 0x2d0(31)
    lfs 1, 0x2cc(31)
    lfs 0, 0x8(1)
    fsubs 0, 1, 0
    stfs 0, 0x2cc(31)
    lfs 1, 0x2d0(31)
    lfs 0, 0xc(1)
    fsubs 0, 1, 0
    stfs 0, 0x2d0(31)
L_801DBC7C:
    li 3, 0x3
    bl fn_801CD664
    cmpwi 3, 0x1
    .4byte 0x41820020 # beq .L_801DBCA8
    .4byte 0x40800028 # bge .L_801DBCB4
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_801DBC9C
    .4byte 0x4800001C # b .L_801DBCB4
L_801DBC9C:
    .4byte 0xC002C374 # lfs f0, lbl_8053F314@sda21(r0)
    stfs 0, 0x2b0(31)
    .4byte 0x48000024 # b .L_801DBCC8
L_801DBCA8:
    .4byte 0xC002C378 # lfs f0, lbl_8053F318@sda21(r0)
    stfs 0, 0x2b0(31)
    .4byte 0x48000018 # b .L_801DBCC8
L_801DBCB4:
    .4byte 0xC002C37C # lfs f0, lbl_8053F31C@sda21(r0)
    stfs 0, 0x2b0(31)
    .4byte 0x4800000C # b .L_801DBCC8
L_801DBCC0:
    .4byte 0xC002C344 # lfs f0, lbl_8053F2E4@sda21(r0)
    stfs 0, 0x2b0(31)
L_801DBCC8:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 0, 0x54(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

