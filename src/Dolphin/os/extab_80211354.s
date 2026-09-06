/*
 * RUSA core-update cluster (vtable lbl_804A6270), part 3/7.
 *
 * fn_80211354(this): calls the confirmed cross-actor utility fn_801CE0A4
 * (no return value used), then runs two identical gated blocks: the gate
 * is "this->0x248 (state) == 0 AND (this->0x54 != this->0x3a8's paired
 * float OR this->0x398 != this->0x54)" i.e. the actor is actively moving
 * while idle-state.
 *
 * Block 1: if the gate passes, fetches a shared manager struct via
 * fn_801902C0 and, while its entry counter at ->0x4a8 is below 10, appends
 * a 0x24-byte record at [mgr]+0x340+(counter*0x24) containing this->0xc/
 * 0x10/0x14 (position) and this->0x3a8/0x398/0x54 (velocity-ish floats),
 * then increments the counter. This is a bounded position/velocity history
 * ring used elsewhere for trail/dust-style effects.
 *
 * Block 2 (same gate, re-evaluated): queues animation/sound cue 0x373 via
 * fn_801F0E34(this, 0x373, 0).
 */
.section extab, "a"
.balign 4
.global etb_8000A068
etb_8000A068:
    .4byte 0x08CA0000
    .4byte 0x00000000
.size etb_8000A068, 8

.section extabindex, "a"
.balign 4
.global eti_80017BE4
eti_80017BE4:
    .4byte fn_80211354
    .4byte 0x00000138
    .4byte etb_8000A068
.size eti_80017BE4, 12

.text
.balign 4
.global fn_80211354

fn_80211354:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stfd 29, 0x10(1)
    psq_st 29, 0x18(1), 0, 0
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801CE0A4
    lwz 0, 0x248(31)
    li 3, 0x0
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_802113B4
    .4byte 0xC022CB58 # lfs f1, lbl_8053FAF8@sda21(r0)
    lfs 0, 0x54(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820014 # beq .L_802113B4
    lfs 0, 0x398(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820008 # beq .L_802113B4
    li 3, 0x1
L_802113B4:
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_80211414
    lfs 29, 0x3a8(31)
    lfs 30, 0x398(31)
    lfs 31, 0x54(31)
    bl fn_801902C0
    lwz 0, 0x4a8(3)
    cmpwi 0, 0xa
    .4byte 0x40800040 # bge .L_80211414
    mulli 4, 0, 0x24
    lfs 0, 0xc(31)
    addi 4, 4, 0x340
    add 4, 3, 4
    stfs 0, 0x0(4)
    lfs 0, 0x10(31)
    stfs 0, 0x4(4)
    lfs 0, 0x14(31)
    stfs 0, 0x8(4)
    stfs 31, 0xc(4)
    stfs 30, 0x10(4)
    stfs 29, 0x14(4)
    lwz 4, 0x4a8(3)
    addi 0, 4, 0x1
    stw 0, 0x4a8(3)
L_80211414:
    lwz 0, 0x248(31)
    li 3, 0x0
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_80211444
    .4byte 0xC022CB58 # lfs f1, lbl_8053FAF8@sda21(r0)
    lfs 0, 0x54(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820014 # beq .L_80211444
    lfs 0, 0x398(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820008 # beq .L_80211444
    li 3, 0x1
L_80211444:
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80211460
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x73
    li 5, 0x0
    bl fn_801F0E34
L_80211460:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    psq_l 29, 0x18(1), 0, 0
    lfd 29, 0x10(1)
    lwz 0, 0x44(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

