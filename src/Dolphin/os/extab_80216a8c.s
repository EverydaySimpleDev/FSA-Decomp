# A self-contained pair sharing one 0x6c4-byte block (no extab):
# - fn_80217128(this): the RESET/init half - sets 4 float fields
#   (+0x4/+0x8/+0xc/+0x10) from 2 small-data constants (the same
#   "physics/motion parameter block" shape as fn_801EB950/fn_8021FB44)
#   and zeroes +0x0/+0x14. Embedded by SLK2 at its own +0x528 (see
#   extab_801c573c.s).
# - fn_80216A8C(this): the UPDATE half - a large, jump-table-driven
#   (`jumptable_804A64C0`/`jumptable_804A64E0`) state machine that reads
#   an OWNER object's state/phase fields (this->0x0 is a pointer to it,
#   read as `owner->0x340`/`owner->0x34c`/`owner->0x34d`/`owner->0x348`)
#   and, depending on the (state, phase) combination, re-derives this
#   record's 4 float fields (+0x4/+0x8/+0xc/+0x10) from a DIFFERENT pair
#   of small-data float constants per branch, then accumulates them onto
#   the PREVIOUS values via `fadds` and stamps +0x14 with the matched
#   phase index. Structurally understood as "recompute a
#   position/velocity-like float pair based on the owner's current
#   animation state and phase, accumulating rather than overwriting" -
#   the exact per-branch constant meanings were not individually
#   decoded (there are ~15 near-identical branches).
.text
.balign 4
.global fn_80216A8C
.global fn_80217128

fn_80216A8C:
    .4byte 0xC022CC68 # lfs f1, lbl_8053FC08@sda21(r0)
    .4byte 0xC002CC6C # lfs f0, lbl_8053FC0C@sda21(r0)
    stfs 1, 0x4(3)
    stfs 1, 0x8(3)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lwz 4, 0x0(3)
    lwz 0, 0x340(4)
    cmpwi 0, 0x2
    .4byte 0x408201B0 # bne .L_80216C60
    lbz 0, 0x34d(4)
    cmplwi 0, 0x3
    bltlr
    lbz 0, 0x34c(4)
    extsb 0, 0
    cmpwi 0, 0x2
    .4byte 0x418200DC # beq .L_80216BA8
    .4byte 0x40800014 # bge .L_80216AE4
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80216AF0
    .4byte 0x40800070 # bge .L_80216B4C
    blr
L_80216AE4:
    cmpwi 0, 0x4
    bgelr
    .4byte 0x48000118 # b .L_80216C04
L_80216AF0:
    .4byte 0xC022CC70 # lfs f1, lbl_8053FC10@sda21(r0)
    li 0, 0x0
    .4byte 0xC002CC74 # lfs f0, lbl_8053FC14@sda21(r0)
    stfs 1, 0x4(3)
    .4byte 0xC042CC78 # lfs f2, lbl_8053FC18@sda21(r0)
    stfs 1, 0x8(3)
    .4byte 0xC022CC60 # lfs f1, lbl_8053FC00@sda21(r0)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lfs 0, 0x4(3)
    fadds 0, 0, 2
    stfs 0, 0x4(3)
    lfs 0, 0x8(3)
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 2
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    stw 0, 0x14(3)
    blr
L_80216B4C:
    .4byte 0xC022CC70 # lfs f1, lbl_8053FC10@sda21(r0)
    li 0, 0x1
    .4byte 0xC002CC74 # lfs f0, lbl_8053FC14@sda21(r0)
    stfs 1, 0x4(3)
    .4byte 0xC042CC7C # lfs f2, lbl_8053FC1C@sda21(r0)
    stfs 1, 0x8(3)
    .4byte 0xC022CC60 # lfs f1, lbl_8053FC00@sda21(r0)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lfs 0, 0x4(3)
    fadds 0, 0, 2
    stfs 0, 0x4(3)
    lfs 0, 0x8(3)
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 2
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    stw 0, 0x14(3)
    blr
L_80216BA8:
    .4byte 0xC022CC70 # lfs f1, lbl_8053FC10@sda21(r0)
    li 0, 0x2
    .4byte 0xC002CC74 # lfs f0, lbl_8053FC14@sda21(r0)
    stfs 1, 0x4(3)
    .4byte 0xC042CC60 # lfs f2, lbl_8053FC00@sda21(r0)
    stfs 1, 0x8(3)
    .4byte 0xC022CC78 # lfs f1, lbl_8053FC18@sda21(r0)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lfs 0, 0x4(3)
    fadds 0, 0, 2
    stfs 0, 0x4(3)
    lfs 0, 0x8(3)
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 2
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    stw 0, 0x14(3)
    blr
L_80216C04:
    .4byte 0xC022CC70 # lfs f1, lbl_8053FC10@sda21(r0)
    li 0, 0x3
    .4byte 0xC002CC74 # lfs f0, lbl_8053FC14@sda21(r0)
    stfs 1, 0x4(3)
    .4byte 0xC042CC60 # lfs f2, lbl_8053FC00@sda21(r0)
    stfs 1, 0x8(3)
    .4byte 0xC022CC7C # lfs f1, lbl_8053FC1C@sda21(r0)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lfs 0, 0x4(3)
    fadds 0, 0, 2
    stfs 0, 0x4(3)
    lfs 0, 0x8(3)
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 2
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    stw 0, 0x14(3)
    blr
L_80216C60:
    cmpwi 0, 0x3
    .4byte 0x408201B0 # bne .L_80216E14
    lbz 0, 0x34d(4)
    cmplwi 0, 0x1
    bltlr
    lbz 0, 0x34c(4)
    extsb 0, 0
    cmpwi 0, 0x2
    .4byte 0x418200DC # beq .L_80216D5C
    .4byte 0x40800014 # bge .L_80216C98
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80216CA4
    .4byte 0x40800070 # bge .L_80216D00
    blr
L_80216C98:
    cmpwi 0, 0x4
    bgelr
    .4byte 0x48000118 # b .L_80216DB8
L_80216CA4:
    .4byte 0xC022CC70 # lfs f1, lbl_8053FC10@sda21(r0)
    li 0, 0x0
    .4byte 0xC002CC74 # lfs f0, lbl_8053FC14@sda21(r0)
    stfs 1, 0x4(3)
    .4byte 0xC042CC78 # lfs f2, lbl_8053FC18@sda21(r0)
    stfs 1, 0x8(3)
    .4byte 0xC022CC60 # lfs f1, lbl_8053FC00@sda21(r0)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lfs 0, 0x4(3)
    fadds 0, 0, 2
    stfs 0, 0x4(3)
    lfs 0, 0x8(3)
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 2
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    stw 0, 0x14(3)
    blr
L_80216D00:
    .4byte 0xC022CC70 # lfs f1, lbl_8053FC10@sda21(r0)
    li 0, 0x1
    .4byte 0xC002CC74 # lfs f0, lbl_8053FC14@sda21(r0)
    stfs 1, 0x4(3)
    .4byte 0xC042CC7C # lfs f2, lbl_8053FC1C@sda21(r0)
    stfs 1, 0x8(3)
    .4byte 0xC022CC60 # lfs f1, lbl_8053FC00@sda21(r0)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lfs 0, 0x4(3)
    fadds 0, 0, 2
    stfs 0, 0x4(3)
    lfs 0, 0x8(3)
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 2
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    stw 0, 0x14(3)
    blr
L_80216D5C:
    .4byte 0xC022CC70 # lfs f1, lbl_8053FC10@sda21(r0)
    li 0, 0x2
    .4byte 0xC002CC74 # lfs f0, lbl_8053FC14@sda21(r0)
    stfs 1, 0x4(3)
    .4byte 0xC042CC60 # lfs f2, lbl_8053FC00@sda21(r0)
    stfs 1, 0x8(3)
    .4byte 0xC022CC78 # lfs f1, lbl_8053FC18@sda21(r0)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lfs 0, 0x4(3)
    fadds 0, 0, 2
    stfs 0, 0x4(3)
    lfs 0, 0x8(3)
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 2
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    stw 0, 0x14(3)
    blr
L_80216DB8:
    .4byte 0xC022CC70 # lfs f1, lbl_8053FC10@sda21(r0)
    li 0, 0x3
    .4byte 0xC002CC74 # lfs f0, lbl_8053FC14@sda21(r0)
    stfs 1, 0x4(3)
    .4byte 0xC042CC60 # lfs f2, lbl_8053FC00@sda21(r0)
    stfs 1, 0x8(3)
    .4byte 0xC022CC7C # lfs f1, lbl_8053FC1C@sda21(r0)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lfs 0, 0x4(3)
    fadds 0, 0, 2
    stfs 0, 0x4(3)
    lfs 0, 0x8(3)
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 2
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    stw 0, 0x14(3)
    blr
L_80216E14:
    cmpwi 0, 0x6
    bnelr
    lbz 0, 0x34d(4)
    cmplwi 0, 0x2
    bltlr
    lwz 4, 0x348(4)
    subi 0, 4, 0x8f
    cmplwi 0, 0x17
    bgtlr
    lis 4, jumptable_804A64E0@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A64E0@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    .4byte 0xC022CC70 # lfs f1, lbl_8053FC10@sda21(r0)
    li 0, 0x0
    .4byte 0xC002CC74 # lfs f0, lbl_8053FC14@sda21(r0)
    stfs 1, 0x4(3)
    .4byte 0xC042CC78 # lfs f2, lbl_8053FC18@sda21(r0)
    stfs 1, 0x8(3)
    .4byte 0xC022CC60 # lfs f1, lbl_8053FC00@sda21(r0)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lfs 0, 0x4(3)
    fadds 0, 0, 2
    stfs 0, 0x4(3)
    lfs 0, 0x8(3)
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 2
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    stw 0, 0x14(3)
    blr
    .4byte 0xC042CC70 # lfs f2, lbl_8053FC10@sda21(r0)
    li 0, 0x2
    .4byte 0xC002CC74 # lfs f0, lbl_8053FC14@sda21(r0)
    stfs 2, 0x4(3)
    .4byte 0xC022CC80 # lfs f1, lbl_8053FC20@sda21(r0)
    stfs 2, 0x8(3)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lfs 0, 0x4(3)
    fadds 0, 0, 1
    stfs 0, 0x4(3)
    lfs 0, 0x8(3)
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 1
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    stw 0, 0x14(3)
    blr
    .4byte 0xC022CC70 # lfs f1, lbl_8053FC10@sda21(r0)
    li 0, 0x2
    .4byte 0xC002CC74 # lfs f0, lbl_8053FC14@sda21(r0)
    stfs 1, 0x4(3)
    .4byte 0xC042CC60 # lfs f2, lbl_8053FC00@sda21(r0)
    stfs 1, 0x8(3)
    .4byte 0xC022CC78 # lfs f1, lbl_8053FC18@sda21(r0)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lfs 0, 0x4(3)
    fadds 0, 0, 2
    stfs 0, 0x4(3)
    lfs 0, 0x8(3)
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 2
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    stw 0, 0x14(3)
    blr
    .4byte 0xC022CC70 # lfs f1, lbl_8053FC10@sda21(r0)
    li 0, 0x1
    .4byte 0xC002CC74 # lfs f0, lbl_8053FC14@sda21(r0)
    stfs 1, 0x4(3)
    .4byte 0xC042CC84 # lfs f2, lbl_8053FC24@sda21(r0)
    stfs 1, 0x8(3)
    .4byte 0xC022CC80 # lfs f1, lbl_8053FC20@sda21(r0)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lfs 0, 0x4(3)
    fadds 0, 0, 2
    stfs 0, 0x4(3)
    lfs 0, 0x8(3)
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 2
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    stw 0, 0x14(3)
    blr
    .4byte 0xC022CC70 # lfs f1, lbl_8053FC10@sda21(r0)
    li 0, 0x1
    .4byte 0xC002CC74 # lfs f0, lbl_8053FC14@sda21(r0)
    stfs 1, 0x4(3)
    .4byte 0xC042CC7C # lfs f2, lbl_8053FC1C@sda21(r0)
    stfs 1, 0x8(3)
    .4byte 0xC022CC60 # lfs f1, lbl_8053FC00@sda21(r0)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lfs 0, 0x4(3)
    fadds 0, 0, 2
    stfs 0, 0x4(3)
    lfs 0, 0x8(3)
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 2
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    stw 0, 0x14(3)
    blr
    .4byte 0xC042CC70 # lfs f2, lbl_8053FC10@sda21(r0)
    li 0, 0x3
    .4byte 0xC002CC74 # lfs f0, lbl_8053FC14@sda21(r0)
    stfs 2, 0x4(3)
    .4byte 0xC022CC84 # lfs f1, lbl_8053FC24@sda21(r0)
    stfs 2, 0x8(3)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lfs 0, 0x4(3)
    fadds 0, 0, 1
    stfs 0, 0x4(3)
    lfs 0, 0x8(3)
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 1
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    stw 0, 0x14(3)
    blr
    .4byte 0xC022CC70 # lfs f1, lbl_8053FC10@sda21(r0)
    li 0, 0x3
    .4byte 0xC002CC74 # lfs f0, lbl_8053FC14@sda21(r0)
    stfs 1, 0x4(3)
    .4byte 0xC042CC60 # lfs f2, lbl_8053FC00@sda21(r0)
    stfs 1, 0x8(3)
    .4byte 0xC022CC7C # lfs f1, lbl_8053FC1C@sda21(r0)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lfs 0, 0x4(3)
    fadds 0, 0, 2
    stfs 0, 0x4(3)
    lfs 0, 0x8(3)
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 2
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    stw 0, 0x14(3)
    blr
    .4byte 0xC022CC70 # lfs f1, lbl_8053FC10@sda21(r0)
    li 0, 0x0
    .4byte 0xC002CC74 # lfs f0, lbl_8053FC14@sda21(r0)
    stfs 1, 0x4(3)
    .4byte 0xC042CC80 # lfs f2, lbl_8053FC20@sda21(r0)
    stfs 1, 0x8(3)
    .4byte 0xC022CC84 # lfs f1, lbl_8053FC24@sda21(r0)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    lfs 0, 0x4(3)
    fadds 0, 0, 2
    stfs 0, 0x4(3)
    lfs 0, 0x8(3)
    fadds 0, 0, 1
    stfs 0, 0x8(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 2
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    stw 0, 0x14(3)
    blr

fn_80217128:
    li 0, 0x0
    .4byte 0xC022CC68 # lfs f1, lbl_8053FC08@sda21(r0)
    stw 0, 0x0(3)
    .4byte 0xC002CC6C # lfs f0, lbl_8053FC0C@sda21(r0)
    stw 0, 0x14(3)
    stfs 1, 0x4(3)
    stfs 1, 0x8(3)
    stfs 0, 0xc(3)
    stfs 0, 0x10(3)
    blr

