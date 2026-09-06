/*
 * NEW ACTOR (vtable lbl_804A6550) - fn_8021A570(struct, resetFlag),
 * called from fn_8021923C as fn_8021A570(&this->0x2c8). Landed as Track
 * A (byte-matched) + structural overview.
 *
 * A self-contained randomized angle-oscillation state machine operating
 * on a small embedded sub-struct (not `this` directly): 0x0 mode flag,
 * 0x4 signed angle, 0x6/0x8 countdown timers, 0xa signed angle-speed,
 * 0xc/0xd direction/oscillation flags. Uses the confirmed PRNG wrapper
 * fn_801CD664 and the confirmed global PRNG state (lbl_8053AAF8) to
 * pick new random timer durations and angle targets, clamping the
 * angle to +-0x8000/0x1555-style fixed-point bounds and reversing
 * direction when limits are hit. Returns a bool indicating a state
 * change, which the caller uses to decide whether to queue new
 * animation cues.
 */
.section extab, "a"
.balign 4
.global etb_8000A38C
etb_8000A38C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000A38C, 8

.section extabindex, "a"
.balign 4
.global eti_8001807C
eti_8001807C:
    .4byte fn_8021A570
    .4byte 0x00000650
    .4byte etb_8000A38C
.size eti_8001807C, 12

.text
.balign 4
.global fn_8021A570

fn_8021A570:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    li 31, 0x0
    stw 30, 0x38(1)
    mr 30, 4
    stw 29, 0x34(1)
    mr 29, 3
    lhz 3, 0x6(3)
    cmplwi 3, 0x0
    .4byte 0x41820494 # beq .L_8021AA30
    subi 0, 3, 0x1
    sth 0, 0x6(29)
    lwz 0, 0x0(29)
    cmpwi 0, 0x0
    .4byte 0x408201F4 # bne .L_8021A7A4
    lbz 0, 0xd(29)
    li 3, -0x889
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8021A5C8
    li 3, 0x889
L_8021A5C8:
    lha 0, 0x4(29)
    add 0, 0, 3
    sth 0, 0x4(29)
    lhz 0, 0x6(29)
    cmplwi 0, 0x0
    .4byte 0x40820454 # bne .L_8021AA30
    lha 3, 0x4(29)
    lis 0, 0x4330
    stw 0, 0x20(1)
    addis 3, 3, 0x1
    .4byte 0xC862CD20 # lfd f3, lbl_8053FCC0@sda21(r0)
    addi 0, 3, -0x8000
    .4byte 0xC022CD10 # lfs f1, lbl_8053FCB0@sda21(r0)
    extsh 0, 0
    .4byte 0xC002CD14 # lfs f0, lbl_8053FCB4@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 2, 0x20(1)
    fsubs 2, 2, 3
    fabs 2, 2
    fmuls 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_8021A638
    li 3, -0x8000
    li 0, 0x1
    sth 3, 0x4(29)
    stb 0, 0xd(29)
    .4byte 0x48000010 # b .L_8021A644
L_8021A638:
    li 0, 0x0
    sth 0, 0x4(29)
    stb 0, 0xd(29)
L_8021A644:
    clrlwi. 0, 30, 24
    .4byte 0x41820060 # beq .L_8021A6A8
    lbz 0, 0xc(29)
    cmplwi 0, 0x0
    .4byte 0x40820048 # bne .L_8021A69C
    li 0, 0x1
    li 3, 0xb5
    stw 0, 0x0(29)
    bl fn_801CD664
    addi 3, 3, 0x78
    li 0, 0x0
    sth 3, 0x6(29)
    sth 0, 0x8(29)
    lbz 0, 0xd(29)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8021A690
    li 0, -0x180
    sth 0, 0xa(29)
    .4byte 0x480003A4 # b .L_8021AA30
L_8021A690:
    li 0, 0x180
    sth 0, 0xa(29)
    .4byte 0x48000398 # b .L_8021AA30
L_8021A69C:
    li 0, 0x0
    sth 0, 0x6(29)
    .4byte 0x4800038C # b .L_8021AA30
L_8021A6A8:
    lbz 0, 0xc(29)
    cmplwi 0, 0x0
    .4byte 0x408200E8 # bne .L_8021A798
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022CD18 # lfs f1, lbl_8053FCB8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002CD1C # lfs f0, lbl_8053FCBC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    lfs 2, 0x1c(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080007C # bge .L_8021A774
    li 0, 0x1
    li 3, 0xb5
    stw 0, 0x0(29)
    bl fn_801CD664
    addi 0, 3, 0x78
    lis 3, 0x19
    sth 0, 0x8(29)
    addi 0, 3, 0x660d
    .4byte 0xC022CD18 # lfs f1, lbl_8053FCB8@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002CD14 # lfs f0, lbl_8053FCB4@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 2, 0x18(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8021A768
    li 0, -0x180
    sth 0, 0xa(29)
    .4byte 0x480002CC # b .L_8021AA30
L_8021A768:
    li 0, 0x180
    sth 0, 0xa(29)
    .4byte 0x480002C0 # b .L_8021AA30
L_8021A774:
    li 0, 0x0
    li 3, 0xb5
    stw 0, 0x0(29)
    bl fn_801CD664
    addi 3, 3, 0x78
    li 0, 0x0
    sth 3, 0x8(29)
    sth 0, 0xa(29)
    .4byte 0x4800029C # b .L_8021AA30
L_8021A798:
    li 0, 0x0
    sth 0, 0x6(29)
    .4byte 0x48000290 # b .L_8021AA30
L_8021A7A4:
    cmpwi 0, 0x1
    .4byte 0x40820288 # bne .L_8021AA30
    lha 3, 0x4(29)
    li 4, 0x0
    lha 0, 0xa(29)
    add 0, 3, 0
    sth 0, 0x4(29)
    lbz 0, 0xd(29)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_8021A804
    lha 0, 0x4(29)
    clrlwi 0, 0, 16
    cmplwi 0, 0x9555
    .4byte 0x41800014 # blt .L_8021A7EC
    li 0, -0x6aab
    li 4, 0x1
    sth 0, 0x4(29)
    .4byte 0x4800004C # b .L_8021A834
L_8021A7EC:
    cmplwi 0, 0x6aab
    .4byte 0x41810044 # bgt .L_8021A834
    li 0, 0x6aab
    li 4, 0x1
    sth 0, 0x4(29)
    .4byte 0x48000034 # b .L_8021A834
L_8021A804:
    lha 0, 0x4(29)
    cmpwi 0, 0x1555
    .4byte 0x41800014 # blt .L_8021A820
    li 0, 0x1555
    li 4, 0x1
    sth 0, 0x4(29)
    .4byte 0x48000018 # b .L_8021A834
L_8021A820:
    cmpwi 0, -0x1555
    .4byte 0x41810010 # bgt .L_8021A834
    li 0, -0x1555
    li 4, 0x1
    sth 0, 0x4(29)
L_8021A834:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_8021A84C
    lha 0, 0xa(29)
    li 31, 0x1
    neg 0, 0
    sth 0, 0xa(29)
L_8021A84C:
    extsh. 0, 3
    .4byte 0x41810010 # bgt .L_8021A860
    lha 0, 0x4(29)
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_8021A874
L_8021A860:
    extsh. 0, 3
    .4byte 0x418001B8 # blt .L_8021AA1C
    lha 0, 0x4(29)
    cmpwi 0, 0x0
    .4byte 0x418101AC # bgt .L_8021AA1C
L_8021A874:
    lhz 0, 0x6(29)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8021A88C
    lbz 0, 0xc(29)
    cmplwi 0, 0x0
    .4byte 0x418201A8 # beq .L_8021AA30
L_8021A88C:
    lha 3, 0x4(29)
    lis 0, 0x4330
    stw 0, 0x20(1)
    addis 3, 3, 0x1
    .4byte 0xC862CD20 # lfd f3, lbl_8053FCC0@sda21(r0)
    addi 0, 3, -0x8000
    .4byte 0xC022CD10 # lfs f1, lbl_8053FCB0@sda21(r0)
    extsh 0, 0
    .4byte 0xC002CD14 # lfs f0, lbl_8053FCB4@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 2, 0x20(1)
    fsubs 2, 2, 3
    fabs 2, 2
    fmuls 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x4080004C # bge .L_8021A918
    li 0, -0x8000
    li 3, 0x0
    sth 0, 0x4(29)
    lbz 0, 0xc(29)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_8021A904
    stw 3, 0x0(29)
    li 0, 0xf
    sth 0, 0x6(29)
    sth 3, 0x8(29)
    sth 3, 0xa(29)
    li 3, 0x1
    .4byte 0x48000008 # b .L_8021A908
L_8021A904:
    sth 3, 0x6(29)
L_8021A908:
    clrlwi. 0, 3, 24
    .4byte 0x41820124 # beq .L_8021AA30
    li 31, 0x1
    .4byte 0x4800011C # b .L_8021AA30
L_8021A918:
    li 4, 0x0
    sth 4, 0x4(29)
    lbz 0, 0xc(29)
    cmplwi 0, 0x0
    .4byte 0x408200E4 # bne .L_8021AA0C
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022CD18 # lfs f1, lbl_8053FCB8@sda21(r0)
    lwz 3, 0xb4(5)
    .4byte 0xC002CD1C # lfs f0, lbl_8053FCBC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 2, 0x14(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080007C # bge .L_8021A9EC
    li 0, 0x1
    li 3, 0xb5
    stw 0, 0x0(29)
    bl fn_801CD664
    addi 0, 3, 0x78
    lis 3, 0x19
    sth 0, 0x8(29)
    addi 0, 3, 0x660d
    .4byte 0xC022CD18 # lfs f1, lbl_8053FCB8@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002CD14 # lfs f0, lbl_8053FCB4@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 2, 0x10(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8021A9E0
    li 0, -0x180
    sth 0, 0xa(29)
    .4byte 0x48000034 # b .L_8021AA10
L_8021A9E0:
    li 0, 0x180
    sth 0, 0xa(29)
    .4byte 0x48000028 # b .L_8021AA10
L_8021A9EC:
    stw 4, 0x0(29)
    li 3, 0xb5
    bl fn_801CD664
    addi 3, 3, 0x78
    li 0, 0x0
    sth 3, 0x8(29)
    sth 0, 0xa(29)
    .4byte 0x48000008 # b .L_8021AA10
L_8021AA0C:
    sth 4, 0x6(29)
L_8021AA10:
    li 0, 0x0
    sth 0, 0x6(29)
    .4byte 0x48000018 # b .L_8021AA30
L_8021AA1C:
    lhz 0, 0x6(29)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8021AA30
    li 0, 0x1
    sth 0, 0x6(29)
L_8021AA30:
    lhz 3, 0x8(29)
    cmplwi 3, 0x0
    .4byte 0x41820168 # beq .L_8021ABA0
    subi 0, 3, 0x1
    sth 0, 0x8(29)
    lhz 0, 0x8(29)
    cmplwi 0, 0x0
    .4byte 0x40820154 # bne .L_8021ABA0
    clrlwi. 0, 30, 24
    .4byte 0x41820054 # beq .L_8021AAA8
    lhz 0, 0x6(29)
    cmplwi 0, 0x0
    .4byte 0x40820048 # bne .L_8021AAA8
    lbz 0, 0xc(29)
    cmplwi 0, 0x0
    .4byte 0x4082003C # bne .L_8021AAA8
    lwz 0, 0x0(29)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_8021AA8C
    li 0, 0xf
    li 31, 0x1
    sth 0, 0x6(29)
    .4byte 0x48000118 # b .L_8021ABA0
L_8021AA8C:
    cmpwi 0, 0x1
    .4byte 0x40820110 # bne .L_8021ABA0
    li 3, 0xb5
    bl fn_801CD664
    addi 0, 3, 0x78
    sth 0, 0x6(29)
    .4byte 0x480000FC # b .L_8021ABA0
L_8021AAA8:
    lbz 0, 0xc(29)
    cmplwi 0, 0x0
    .4byte 0x408200E8 # bne .L_8021AB98
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022CD18 # lfs f1, lbl_8053FCB8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002CD1C # lfs f0, lbl_8053FCBC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080007C # bge .L_8021AB74
    li 0, 0x1
    li 3, 0xb5
    stw 0, 0x0(29)
    bl fn_801CD664
    addi 0, 3, 0x78
    lis 3, 0x19
    sth 0, 0x8(29)
    addi 0, 3, 0x660d
    .4byte 0xC022CD18 # lfs f1, lbl_8053FCB8@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002CD14 # lfs f0, lbl_8053FCB4@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8021AB68
    li 0, -0x180
    sth 0, 0xa(29)
    .4byte 0x4800003C # b .L_8021ABA0
L_8021AB68:
    li 0, 0x180
    sth 0, 0xa(29)
    .4byte 0x48000030 # b .L_8021ABA0
L_8021AB74:
    li 0, 0x0
    li 3, 0xb5
    stw 0, 0x0(29)
    bl fn_801CD664
    addi 3, 3, 0x78
    li 0, 0x0
    sth 3, 0x8(29)
    sth 0, 0xa(29)
    .4byte 0x4800000C # b .L_8021ABA0
L_8021AB98:
    li 0, 0x0
    sth 0, 0x6(29)
L_8021ABA0:
    lwz 0, 0x44(1)
    mr 3, 31
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

