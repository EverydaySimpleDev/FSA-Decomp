# Vtable body for a real FourCC actor (vtable lbl_804AF018) whose ctor
# (fn_80203A88, already landed - calls base ctor Actor_ctor then installs
# this vtable) sits in the actor-ctor-dispatch region; found by re-scanning
# an earlier, previously-unexplored portion of this 901KB gap.
# fn_8037D784: dtor - trivial, base-chain only (no per-field cleanup).
# fn_8037D7E4: Init() - sets 3 float fields (this+0x3c/0x40/0x44) to a
# shared constant and this->0x230=2 (initial state).
# fn_8037D800: a conditional render-effect trigger - branches on
# this->0x234 (a countdown) vs 0x100 and a bit of this->0x234, and on the
# universal spawn-param field (this->0x90), to call the confirmed
# universal render primitive fn_801F06F0 with one of 2 render-index
# variants (0x5c/0x5d), then registers with the confirmed per-player
# marker system fn_803075AC (see project_fsa_tink_actor_progress.md).
# fn_8037D8F4 (0x444): update() - paired-single position integration
# (this+0xc/0x3c and this+0x14/0x44), a countdown timer (this->0x234)
# gating visibility (this->0x11c), then a per-state (this->0x230)
# dispatcher. Consistent with a timed hazard/effect actor tied to the
# per-player marker system. Not traced to full state-by-state semantics -
# out of scope for this landing. Needs -mgekko (uses psq_l/psq_st).
.section extab, "a"
.balign 4
.global etb_8000EC48
etb_8000EC48:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000EC48, 8

.global etb_8000EC50
etb_8000EC50:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000EC50, 8

.global etb_8000EC58
etb_8000EC58:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000EC58, 8

.section extabindex, "a"
.balign 4
.global eti_8001E9B8
eti_8001E9B8:
    .4byte fn_8037D784
    .4byte 0x00000060
    .4byte etb_8000EC48
.size eti_8001E9B8, 12

.global eti_8001E9C4
eti_8001E9C4:
    .4byte fn_8037D800
    .4byte 0x000000F4
    .4byte etb_8000EC50
.size eti_8001E9C4, 12

.global eti_8001E9D0
eti_8001E9D0:
    .4byte fn_8037D8F4
    .4byte 0x00000444
    .4byte etb_8000EC58
.size eti_8001E9D0, 12

.text
.balign 4
.global fn_8037D784
.global fn_8037D7E4
.global fn_8037D800
.global fn_8037D8F4
.global fn_8037DD38

fn_8037D784:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8037D7C8
    lis 5, lbl_804AF018@ha
    li 4, 0x0
    addi 0, 5, lbl_804AF018@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8037D7C8
    mr 3, 30
    bl dtor_80084580
L_8037D7C8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037D7E4:
    .4byte 0xC00200F0 # lfs f0, lbl_80543090@sda21(r0)
    li 0, 0x2
    stfs 0, 0x44(3)
    stfs 0, 0x40(3)
    stfs 0, 0x3c(3)
    stw 0, 0x230(3)
    blr

fn_8037D800:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x234(3)
    cmpwi 0, 0x100
    .4byte 0x4080000C # bge .L_8037D828
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x408200BC # bne .L_8037D8E0
L_8037D828:
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_8037D88C
    .4byte 0xC02200F4 # lfs f1, lbl_80543094@sda21(r0)
    lis 3, lbl_80475588@ha
    addi 4, 3, lbl_80475588@l
    li 5, 0x5c
    fmr 2, 1
    mr 3, 31
    li 6, 0x0
    li 7, 0x2
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 6, 0x5c
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    bl fn_803075AC
    .4byte 0x48000058 # b .L_8037D8E0
L_8037D88C:
    .4byte 0xC02200F4 # lfs f1, lbl_80543094@sda21(r0)
    lis 3, lbl_80475588@ha
    addi 4, 3, lbl_80475588@l
    li 5, 0x5d
    fmr 2, 1
    mr 3, 31
    li 6, 0x0
    li 7, 0x1
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 6, 0x5d
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    bl fn_803075AC
L_8037D8E0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8037D8F4:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    lfs 1, 0x10(3)
    lfs 0, 0xc(3)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 3, 0x234(3)
    subi 0, 3, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41810010 # bgt .L_8037D964
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480003BC # b .L_8037DD1C
L_8037D964:
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182008C # beq .L_8037D9F8
    .4byte 0x408001F0 # bge .L_8037DB60
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8037D984
    .4byte 0x480001E4 # b .L_8037DB60
    .4byte 0x480001E0 # b .L_8037DB60
L_8037D984:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_8037D9CC
    lfs 2, 0x40(31)
    .4byte 0xC02200F8 # lfs f1, lbl_80543098@sda21(r0)
    .4byte 0xC00200F0 # lfs f0, lbl_80543090@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x40(31)
    lfs 1, 0x40(31)
    fcmpo cr0, 1, 0
    .4byte 0x408101A4 # ble .L_8037DB60
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000198 # b .L_8037DB60
L_8037D9CC:
    lfs 2, 0x44(31)
    .4byte 0xC02200F8 # lfs f1, lbl_80543098@sda21(r0)
    .4byte 0xC00200F0 # lfs f0, lbl_80543090@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    lfs 1, 0x44(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800178 # bge .L_8037DB60
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x4800016C # b .L_8037DB60
L_8037D9F8:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x418200D0 # beq .L_8037DAE0
    lfs 1, 0x40(31)
    .4byte 0xC00200F8 # lfs f0, lbl_80543098@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x40(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8037DA38
    .4byte 0xC02200FC # lfs f1, lbl_8054309C@sda21(r0)
    .4byte 0x48000008 # b .L_8037DA3C
L_8037DA38:
    .4byte 0xC0220100 # lfs f1, lbl_805430A0@sda21(r0)
L_8037DA3C:
    lfs 0, 0x10(31)
    mr 3, 31
    lfs 2, 0x14(31)
    addi 5, 1, 0x1c
    fadds 1, 0, 1
    lfs 0, 0xc(31)
    stfs 0, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 2, 0x24(1)
    lwz 12, 0x0(31)
    lwz 4, 0x4(31)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200E4 # bne .L_8037DB60
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41810018 # bgt .L_8037DAAC
    .4byte 0xC00200F0 # lfs f0, lbl_80543090@sda21(r0)
    li 0, 0x2
    stfs 0, 0x40(31)
    stw 0, 0x230(31)
    .4byte 0x480000B8 # b .L_8037DB60
L_8037DAAC:
    xoris 0, 0, 0x8000
    lis 3, 0x4330
    stw 0, 0x3c(1)
    li 0, 0x0
    .4byte 0xC8220110 # lfd f1, lbl_805430B0@sda21(r0)
    stw 3, 0x38(1)
    .4byte 0xC0420104 # lfs f2, lbl_805430A4@sda21(r0)
    lfd 0, 0x38(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    stfs 0, 0x40(31)
    stw 0, 0x230(31)
    .4byte 0x48000084 # b .L_8037DB60
L_8037DAE0:
    lfs 2, 0x44(31)
    .4byte 0xC02200F8 # lfs f1, lbl_80543098@sda21(r0)
    .4byte 0xC00200F0 # lfs f0, lbl_80543090@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820060 # bne .L_8037DB60
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    stfs 0, 0x14(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41810014 # bgt .L_8037DB30
    stfs 0, 0x44(31)
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000034 # b .L_8037DB60
L_8037DB30:
    xoris 0, 0, 0x8000
    lis 3, 0x4330
    stw 0, 0x3c(1)
    li 0, 0x0
    .4byte 0xC8220110 # lfd f1, lbl_805430B0@sda21(r0)
    stw 3, 0x38(1)
    .4byte 0xC0420108 # lfs f2, lbl_805430A8@sda21(r0)
    lfd 0, 0x38(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    stfs 0, 0x44(31)
    stw 0, 0x230(31)
L_8037DB60:
    lfs 0, 0x80(31)
    addi 3, 1, 0x28
    lfs 1, 0x8(1)
    addi 5, 1, 0x8
    stfs 0, 0x28(1)
    li 6, 0x1
    lfs 5, 0xc(1)
    fadds 3, 0, 1
    lfs 0, 0x84(31)
    stfs 0, 0x2c(1)
    fadds 2, 0, 5
    lfs 0, 0x88(31)
    stfs 0, 0x30(1)
    fadds 1, 0, 1
    lfs 4, 0x8c(31)
    fadds 0, 4, 5
    stfs 4, 0x34(1)
    stfs 3, 0x28(1)
    stfs 2, 0x2c(1)
    stfs 1, 0x30(1)
    stfs 0, 0x34(1)
    lwz 4, 0x4(31)
    bl fn_8023B8E4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    mr 29, 3
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_8037DC1C
    lwz 4, 0x4(31)
    addi 3, 1, 0x28
    .4byte 0xC02200F0 # lfs f1, lbl_80543090@sda21(r0)
    li 5, 0x0
    bl fn_8023AF14
    mr. 30, 3
    .4byte 0x41800014 # blt .L_8037DBFC
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8037DBFC
    li 30, -0x1
L_8037DBFC:
    cmpwi 29, 0x0
    .4byte 0x41800034 # blt .L_8037DC34
    mr 3, 29
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8037DC34
    li 29, -0x1
    .4byte 0x4800001C # b .L_8037DC34
L_8037DC1C:
    lwz 4, 0x4(31)
    addi 3, 1, 0x28
    .4byte 0xC02200F0 # lfs f1, lbl_80543090@sda21(r0)
    li 5, 0x1
    bl fn_8023AF14
    mr 30, 3
L_8037DC34:
    cmpwi 30, 0x0
    .4byte 0x41800054 # blt .L_8037DC8C
    mr 3, 30
    bl fn_802375B0
    cmpwi 3, 0x180
    .4byte 0x40820010 # bne .L_8037DC58
    mr 3, 30
    li 4, 0x12
    bl fn_80230EB8
L_8037DC58:
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8037DC74
    mr 3, 30
    li 4, 0xc0
    bl fn_80237524
    .4byte 0x48000010 # b .L_8037DC80
L_8037DC74:
    mr 3, 30
    li 4, 0x30
    bl fn_80237524
L_8037DC80:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000058 # b .L_8037DCE0
L_8037DC8C:
    cmpwi 29, 0x0
    .4byte 0x41800050 # blt .L_8037DCE0
    mr 3, 29
    bl fn_802375B0
    cmpwi 3, 0x180
    .4byte 0x40820010 # bne .L_8037DCB0
    mr 3, 29
    li 4, 0x12
    bl fn_80230EB8
L_8037DCB0:
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8037DCCC
    mr 3, 29
    li 4, 0xc0
    bl fn_80237524
    .4byte 0x48000010 # b .L_8037DCD8
L_8037DCCC:
    mr 3, 29
    li 4, 0x30
    bl fn_80237524
L_8037DCD8:
    li 0, 0x0
    stb 0, 0x11c(31)
L_8037DCE0:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800034 # bge .L_8037DD1C
    lfs 2, 0x10(31)
    addi 4, 1, 0x10
    lfs 0, 0x14(31)
    lfs 1, 0xc(31)
    fsubs 2, 2, 0
    .4byte 0xC00200F0 # lfs f0, lbl_80543090@sda21(r0)
    stfs 1, 0x10(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x14(1)
    stfs 0, 0x18(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_8037DD1C:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8037DD38:
    li 0, 0x0
    stb 0, 0x11c(3)
    blr

