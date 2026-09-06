/*
 * fn_801D85B0(this) (0x801D85B0-0x801D882C, 0x27C/636 bytes) - a state-
 * transition-condition evaluator for this new class (states 0xb/0xc handled,
 * else no-op), structurally similar in role to fn_801D5390 for
 * dtor_801D46FC's class. For each of the two states: picks a "pattern index"
 * (this->0x334) either from a small weighted table {1,3,5,9} (gated by a
 * random draw when a byte flag this->0x33f==3) or a flat random pick in
 * [0,0xc) via the CONFIRMED fn_801CD664 PRNG-index helper, then a random
 * duration (this->0x338 = 0x3c+rand(0x3d)). Compares self position (this->0xc)
 * against a per-pattern threshold float stored in an array at
 * this+(pattern*8)+0x2d4, combined with a flag bit (this->0x230 bit 18), and
 * commits a transition to state 0xc or 0xb via fn_801D9C58(this, newState) -
 * the SAME "commit new state" helper fn_801D8400 calls. The exact real-world
 * meaning of the two states/patterns is not fully traced.
 */

.section extab, "a"
.balign 4
.global etb_80008744
etb_80008744:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008744, 8

.section extabindex, "a"
.balign 4
.global eti_80015B38
eti_80015B38:
    .4byte fn_801D85B0
    .4byte 0x0000027C
    .4byte etb_80008744
.size eti_80015B38, 12

.text
.balign 4
.global fn_801D85B0

fn_801D85B0:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0xf
    .4byte 0x4080024C # bge .L_801D8818
    cmpwi 0, 0xb
    .4byte 0x40800008 # bge .L_801D85DC
    .4byte 0x48000240 # b .L_801D8818
L_801D85DC:
    cmpwi 0, 0xc
    .4byte 0x40820108 # bne .L_801D86E8
    lbz 0, 0x33f(31)
    cmplwi 0, 0x3
    .4byte 0x40820080 # bne .L_801D866C
    li 6, 0x1
    li 7, 0x6
    stw 6, 0x38(1)
    slwi 0, 6, 2
    addi 5, 1, 0x38
    li 4, 0x2
    stwx 4, 5, 0
    li 6, 0x5
    li 3, 0x3
    li 4, 0x6
    stw 6, 0x40(1)
    slwi 0, 3, 2
    li 6, 0x9
    li 3, 0x5
    stwx 4, 5, 0
    cmpwi 7, 0x0
    slwi 0, 3, 2
    li 4, 0xa
    stw 6, 0x48(1)
    stwx 4, 5, 0
    .4byte 0x40810020 # ble .L_801D8660
    li 3, 0x6
    bl fn_801CD664
    slwi 0, 3, 2
    addi 3, 1, 0x38
    lwzx 0, 3, 0
    stb 0, 0x334(31)
    .4byte 0x4800001C # b .L_801D8678
L_801D8660:
    li 0, 0x0
    stb 0, 0x334(31)
    .4byte 0x48000010 # b .L_801D8678
L_801D866C:
    li 3, 0xc
    bl fn_801CD664
    stb 3, 0x334(31)
L_801D8678:
    li 3, 0x3d
    bl fn_801CD664
    addi 0, 3, 0x3c
    li 4, 0x0
    sth 0, 0x338(31)
    lbz 0, 0x334(31)
    lfs 1, 0xc(31)
    slwi 0, 0, 3
    add 3, 31, 0
    lfs 0, 0x2d4(3)
    fcmpo cr0, 1, 0
    .4byte 0x41800018 # blt .L_801D86BC
    fcmpu cr0, 1, 0
    .4byte 0x40820014 # bne .L_801D86C0
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820008 # beq .L_801D86C0
L_801D86BC:
    li 4, 0x1
L_801D86C0:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_801D86D8
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 19, 17
    stw 0, 0x230(31)
    .4byte 0x48000144 # b .L_801D8818
L_801D86D8:
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
    .4byte 0x48000134 # b .L_801D8818
L_801D86E8:
    lbz 0, 0x33f(31)
    cmplwi 0, 0x3
    .4byte 0x40820080 # bne .L_801D8770
    li 6, 0x1
    li 7, 0x6
    stw 6, 0x8(1)
    slwi 0, 6, 2
    addi 5, 1, 0x8
    li 4, 0x2
    stwx 4, 5, 0
    li 6, 0x5
    li 3, 0x3
    li 4, 0x6
    stw 6, 0x10(1)
    slwi 0, 3, 2
    li 6, 0x9
    li 3, 0x5
    stwx 4, 5, 0
    cmpwi 7, 0x0
    slwi 0, 3, 2
    li 4, 0xa
    stw 6, 0x18(1)
    stwx 4, 5, 0
    .4byte 0x40810020 # ble .L_801D8764
    li 3, 0x6
    bl fn_801CD664
    slwi 0, 3, 2
    addi 3, 1, 0x8
    lwzx 0, 3, 0
    stb 0, 0x334(31)
    .4byte 0x4800001C # b .L_801D877C
L_801D8764:
    li 0, 0x0
    stb 0, 0x334(31)
    .4byte 0x48000010 # b .L_801D877C
L_801D8770:
    li 3, 0xc
    bl fn_801CD664
    stb 3, 0x334(31)
L_801D877C:
    li 3, 0x3d
    bl fn_801CD664
    addi 0, 3, 0x3c
    li 4, 0x0
    sth 0, 0x338(31)
    mr 5, 4
    lbz 0, 0x334(31)
    lfs 1, 0xc(31)
    slwi 0, 0, 3
    add 3, 31, 0
    lfs 0, 0x2d4(3)
    fcmpo cr0, 1, 0
    .4byte 0x41800018 # blt .L_801D87C4
    fcmpu cr0, 1, 0
    .4byte 0x40820014 # bne .L_801D87C8
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820008 # beq .L_801D87C8
L_801D87C4:
    li 5, 0x1
L_801D87C8:
    clrlwi. 0, 5, 24
    .4byte 0x41820018 # beq .L_801D87E4
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4082001C # bne .L_801D87F4
    li 4, 0x1
    .4byte 0x48000014 # b .L_801D87F4
L_801D87E4:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820008 # beq .L_801D87F4
    li 4, 0x1
L_801D87F4:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_801D880C
    mr 3, 31
    li 4, 0xc
    bl fn_801D9C58
    .4byte 0x48000010 # b .L_801D8818
L_801D880C:
    mr 3, 31
    li 4, 0xb
    bl fn_801D9C58
L_801D8818:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

