.section extab, "a"
.balign 4
.global etb_800088D8
etb_800088D8:
    .4byte 0x120A0000
    .4byte 0x00000000
.size etb_800088D8, 8

.section extabindex, "a"
.balign 4
.global eti_80015D78
eti_80015D78:
    .4byte fn_801DD28C
    .4byte 0x00000184
    .4byte etb_800088D8
.size eti_80015D78, 12

# fn_801DD28C(this) -> bool - a "zone-check with a substituted bounding
# box" utility, using the same this->0x60/0x64/0x68/0x6c bounding-box
# fields seeded by several classes' setParams/ctor this session.
#
# Picks a candidate box (2 float pairs): defaults to (lbl_8053F388,
# lbl_8053F388, lbl_8053F390, lbl_8053F390), UNLESS this->0x248 (own FSM
# state) == 9, in which case it uses 4 distinct per-state constants
# (lbl_8053F394/398/39C/3A0) instead.
#
# If the pair's spread (2nd-1st) is positive AND bit 18 (mask 0x40000) of
# this->0x230 is set AND fn_801DA904(this+0x2a8) returns true: mirrors
# (negates) the first pair - a facing/mirrored-variant adjustment, exact
# trigger not fully confirmed.
#
# If BOTH pairs end up with positive spread: temporarily OVERWRITES
# this->0x60/0x64/0x68/0x6c with the candidate box, calls
# fn_801F2B7C(this, this->0x114, -1, 1) (the same not-yet-decompiled
# boolean check used by fn_801DCC98/fn_801DD1AC - likely a room/zone-
# membership test that reads this->0x60-0x6c internally), captures its
# result, then RESTORES this->0x60/0x64/0x68/0x6c to the object's own
# original box values. Returns that captured result, or false if the
# spread check never passed.
.text
.balign 4
.global fn_801DD28C

fn_801DD28C:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stfd 28, 0x50(1)
    psq_st 28, 0x58(1), 0, 0
    stfd 27, 0x40(1)
    psq_st 27, 0x48(1), 0, 0
    stfd 26, 0x30(1)
    psq_st 26, 0x38(1), 0, 0
    stfd 25, 0x20(1)
    psq_st 25, 0x28(1), 0, 0
    stfd 24, 0x10(1)
    psq_st 24, 0x18(1), 0, 0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0xC3E2C3E8 # lfs f31, lbl_8053F388@sda21(r0)
    .4byte 0xC3A2C3F0 # lfs f29, lbl_8053F390@sda21(r0)
    li 31, 0x0
    lwz 0, 0x248(3)
    fmr 30, 31
    fmr 28, 29
    cmpwi 0, 0x9
    .4byte 0x41820008 # beq .L_801DD308
    .4byte 0x48000014 # b .L_801DD318
L_801DD308:
    .4byte 0xC3E2C3F4 # lfs f31, lbl_8053F394@sda21(r0)
    .4byte 0xC3C2C3F8 # lfs f30, lbl_8053F398@sda21(r0)
    .4byte 0xC3A2C3FC # lfs f29, lbl_8053F39C@sda21(r0)
    .4byte 0xC382C400 # lfs f28, lbl_8053F3A0@sda21(r0)
L_801DD318:
    fsubs 1, 29, 31
    .4byte 0xC002C3EC # lfs f0, lbl_8053F38C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081002C # ble .L_801DD350
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820020 # beq .L_801DD350
    addi 3, 30, 0x2a8
    bl fn_801DA904
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801DD350
    fmr 0, 31
    fneg 31, 29
    fneg 29, 0
L_801DD350:
    fsubs 0, 29, 31
    .4byte 0xC022C3EC # lfs f1, lbl_8053F38C@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40810058 # ble .L_801DD3B4
    fsubs 0, 28, 30
    fcmpo cr0, 0, 1
    .4byte 0x4081004C # ble .L_801DD3B4
    lfs 27, 0x60(30)
    mr 3, 30
    lfs 26, 0x64(30)
    li 5, -0x1
    lfs 25, 0x68(30)
    li 6, 0x1
    lfs 24, 0x6c(30)
    stfs 31, 0x60(30)
    stfs 30, 0x64(30)
    stfs 29, 0x68(30)
    stfs 28, 0x6c(30)
    lwz 4, 0x114(30)
    bl fn_801F2B7C
    stfs 27, 0x60(30)
    mr 31, 3
    stfs 26, 0x64(30)
    stfs 25, 0x68(30)
    stfs 24, 0x6c(30)
L_801DD3B4:
    mr 3, 31
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    psq_l 27, 0x48(1), 0, 0
    lfd 27, 0x40(1)
    psq_l 26, 0x38(1), 0, 0
    lfd 26, 0x30(1)
    psq_l 25, 0x28(1), 0, 0
    lfd 25, 0x20(1)
    psq_l 24, 0x18(1), 0, 0
    lfd 24, 0x10(1)
    lwz 31, 0xc(1)
    lwz 0, 0x94(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

