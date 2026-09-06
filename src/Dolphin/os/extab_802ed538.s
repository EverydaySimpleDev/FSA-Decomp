# fn_802ED538 - GNEF: player-target/terrain helper (0x2A0, private, not in vtable)
# Iterates player indices via Player_GetCapabilityFlagByIndex, resolving position/terrain data
# through a family of room/terrain query helpers (fn_8022CA6C, fn_8022D534,
# fn_8022D75C, fn_802300EC, fn_80230188 x2, fn_80230224, fn_802303FC,
# fn_80230AD4, fn_80236B50) plus player-validity checks (fn_8023DE58 x2,
# fn_8023E724 x2, fn_8023EA28) and fn_80093340 (atan2). Called from the main
# draw()/update() (fn_802ED984) to find a best target/facing per player.
# Track A: byte-match verified, structural overview per the
# large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000D224
etb_8000D224:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_8000D224, 8

.section extabindex, "a"
.balign 4
.global eti_8001C450
eti_8001C450:
    .4byte fn_802ED538
    .4byte 0x000002A0
    .4byte etb_8000D224
.size eti_8001C450, 12

.text
.balign 4
.global fn_802ED538

fn_802ED538:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stmw 27, 0x1c(1)
    mr 28, 3
    li 30, 0x1
    mr 31, 28
    li 29, 0x0
L_802ED568:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182014C # beq .L_802ED6C0
    lwz 27, 0x4(28)
    mr 3, 29
    bl fn_8023DE58
    cmpw 3, 27
    .4byte 0x40820138 # bne .L_802ED6C0
    mr 3, 29
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x40820128 # bne .L_802ED6C0
    mr 3, 29
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x40820118 # bne .L_802ED6C0
    mr 3, 29
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820108 # bne .L_802ED6C0
    mr 3, 29
    bl fn_8022D534
    clrlwi. 0, 3, 24
    .4byte 0x408200F8 # bne .L_802ED6C0
    lbz 0, 0x28e(31)
    cmplwi 0, 0x0
    .4byte 0x408200EC # bne .L_802ED6C0
    mr 3, 29
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x418200DC # beq .L_802ED6C0
    mr 3, 29
    bl fn_8023E724
    .4byte 0xC022E460 # lfs f1, lbl_80541400@sda21(r0)
    lfs 0, 0x8(3)
    lfs 3, 0x0(3)
    fcmpu cr0, 1, 0
    lfs 4, 0x4(3)
    .4byte 0x408200BC # bne .L_802ED6C0
    .4byte 0xC022E464 # lfs f1, lbl_80541404@sda21(r0)
    mr 3, 29
    lfs 0, 0x10(28)
    lfs 2, 0xc(28)
    fadds 0, 1, 0
    fsubs 31, 2, 3
    fsubs 30, 0, 4
    bl fn_8023E724
    fmuls 1, 30, 30
    psq_l 4, 0x0(3), 0, 0
    lfs 3, 0x8(3)
    .4byte 0xC002E460 # lfs f0, lbl_80541400@sda21(r0)
    fmadds 2, 31, 31, 1
    psq_st 4, 0x27c(31), 0, 0
    stfs 3, 0x284(31)
    fcmpo cr0, 2, 0
    .4byte 0x40810024 # ble .L_802ED66C
    frsqrte 3, 2
    .4byte 0xC022E468 # lfs f1, lbl_80541408@sda21(r0)
    .4byte 0xC002E46C # lfs f0, lbl_8054140C@sda21(r0)
    fmuls 2, 3, 2
    fnmsubs 3, 2, 3, 1
    fmuls 3, 3, 2
    fmuls 3, 3, 0
    .4byte 0x48000008 # b .L_802ED670
L_802ED66C:
    fmr 3, 2
L_802ED670:
    fneg 1, 31
    lis 3, lbl_80534C00@ha
    fneg 2, 30
    stfs 3, 0x288(31)
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002E470 # lfs f0, lbl_80541410@sda21(r0)
    li 0, 0x1
    mr 3, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    sth 4, 0x28c(31)
    stb 0, 0x28e(31)
    bl fn_80230AD4
    mr 3, 29
    li 4, 0x5
    li 5, 0x0
    bl fn_8022CA6C
L_802ED6C0:
    lbz 0, 0x28e(31)
    cmplwi 0, 0x0
    .4byte 0x418200C0 # beq .L_802ED788
    mr 3, 29
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x418200B0 # beq .L_802ED788
    mr 3, 29
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x408200A0 # bne .L_802ED788
    lfs 1, 0x288(31)
    .4byte 0xC002E474 # lfs f0, lbl_80541414@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_802ED708
    fsubs 0, 1, 0
    stfs 0, 0x288(31)
    .4byte 0x4800000C # b .L_802ED710
L_802ED708:
    .4byte 0xC002E460 # lfs f0, lbl_80541400@sda21(r0)
    stfs 0, 0x288(31)
L_802ED710:
    lha 0, 0x28c(31)
    lis 3, lbl_8052EBC0@ha
    addi 6, 3, lbl_8052EBC0@l
    lfs 3, 0x288(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0xc(28)
    lfsx 2, 6, 0
    mr 3, 29
    .4byte 0xC022E464 # lfs f1, lbl_80541404@sda21(r0)
    addi 4, 31, 0x27c
    fmadds 0, 3, 2, 0
    li 5, 0xff
    stfs 0, 0x27c(31)
    lha 0, 0x28c(31)
    lfs 0, 0x10(28)
    rlwinm 0, 0, 30, 18, 28
    lfs 2, 0x288(31)
    add 6, 6, 0
    fadds 0, 1, 0
    lfs 1, 0x4(6)
    fmadds 0, 2, 1, 0
    stfs 0, 0x280(31)
    bl fn_802303FC
    lfs 1, 0x288(31)
    .4byte 0xC002E478 # lfs f0, lbl_80541418@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_802ED788
    mr 3, 29
    li 4, 0x0
    bl fn_80230224
L_802ED788:
    lwz 27, 0x4(28)
    mr 3, 29
    bl fn_8023DE58
    cmpw 3, 27
    .4byte 0x40820008 # bne .L_802ED7A0
    li 30, 0x0
L_802ED7A0:
    addi 29, 29, 0x1
    addi 31, 31, 0x14
    cmpwi 29, 0x4
    .4byte 0x4180FDBC # blt .L_802ED568
    mr 3, 30
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lmw 27, 0x1c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

