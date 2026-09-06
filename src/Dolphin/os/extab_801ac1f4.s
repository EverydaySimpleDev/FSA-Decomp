# fn_801AC1F4 - GOMA cluster, 5/7. Vtable slot 17 - per-frame animation-
# offset recompute. Tracks whether the "owning instance" id (this->0x108)
# changed since last call (this->0x25c); on states 1/3 sets a batch of
# scale fields (0x3c/0x40/0x44/0x264/0x268/0x26c) to a single fixed
# constant (lbl_8053E744); on other states instead computes oscillating
# 0x3c/0x40 offsets via fn_801F6874 (angle helper) sampled against the
# shared runtime sine/cosine wave table lbl_8052EBC0 - a wobble/sway
# effect for whichever body part this instance represents.
.section extab, "a"
.balign 4
.global etb_80007ACC
etb_80007ACC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007ACC, 8

.section extabindex, "a"
.balign 4
.global eti_800149B0
eti_800149B0:
    .4byte fn_801AC1F4
    .4byte 0x00000130
    .4byte etb_80007ACC
.size eti_800149B0, 12

.text
.balign 4
.global fn_801AC1F4

fn_801AC1F4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 3, 0x25c(3)
    lwz 0, 0x108(31)
    cmpw 3, 0
    .4byte 0x418200F4 # beq .L_801AC30C
    lwz 3, 0x258(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801AC230
    subi 0, 3, 0x1
    stw 0, 0x258(31)
L_801AC230:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_801AC244
    li 0, 0x0
    stw 0, 0xb0(31)
L_801AC244:
    lwz 0, 0x108(31)
    stw 0, 0x25c(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_801AC260
    cmpwi 0, 0x3
    .4byte 0x40820040 # bne .L_801AC29C
L_801AC260:
    .4byte 0xC002B7A4 # lfs f0, lbl_8053E744@sda21(r0)
    lis 3, 0xa04
    addi 4, 3, 0x4
    li 3, 0x1
    stfs 0, 0x26c(31)
    li 0, 0xc
    stfs 0, 0x268(31)
    stfs 0, 0x264(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 4, 0xb0(31)
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x48000074 # b .L_801AC30C
L_801AC29C:
    lwz 0, 0x98(31)
    clrlwi 3, 0, 16
    addis 3, 3, 0x1
    addi 0, 3, -0x8000
    clrlwi 30, 0, 16
    mr 3, 30
    bl fn_801F6874
    extsh 0, 3
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC022B810 # lfs f1, lbl_8053E7B0@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    mr 3, 30
    lfsx 0, 4, 0
    fmuls 0, 1, 0
    stfs 0, 0x3c(31)
    bl fn_801F6874
    extsh 0, 3
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC022B810 # lfs f1, lbl_8053E7B0@sda21(r0)
    rlwinm 3, 0, 30, 18, 28
    li 0, 0x5
    add 3, 4, 3
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x40(31)
    stw 0, 0x230(31)
L_801AC30C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

