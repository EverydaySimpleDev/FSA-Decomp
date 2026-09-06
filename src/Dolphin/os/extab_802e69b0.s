# fn_802E69B0 - ZOOM: main per-frame update() (0x21C)
# 5-state machine dispatched on this->0x230 (states 0-4). State 0: jittered
# spawn-position check via fn_8023AF14, sets a one-shot global notice flag
# (lbl_8053AB10->0x24 + 0x7f4/0x7f5), then a virtual call (vtable slot 0x30)
# with args (0xff, 1), advances to state 1, and if this->0x234 is set looks
# up a jump table (lbl_8046F260) to trigger fn_801F0D20. State 1: checks
# this->0x238, either transitions via fn_8023077C or falls straight through
# to state 2 via fn_801F0D20. State 2: counts down this->0x240 or advances
# to state 3. State 3/4: sets a second one-shot notice flag then calls
# fn_80230534/fn_801F3668 (NAVI sway utility) depending on this->0x238.
.section extab, "a"
.balign 4
.global etb_8000D034
etb_8000D034:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D034, 8

.section extabindex, "a"
.balign 4
.global eti_8001C198
eti_8001C198:
    .4byte fn_802E69B0
    .4byte 0x0000021C
    .4byte etb_8000D034
.size eti_8001C198, 12

.text
.balign 4
.global fn_802E69B0

fn_802E69B0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x4182015C # beq .L_802E6B28
    .4byte 0x40800014 # bge .L_802E69E4
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802E69F0
    .4byte 0x40800104 # bge .L_802E6AE0
    .4byte 0x480001D8 # b .L_802E6BB8
L_802E69E4:
    cmpwi 0, 0x4
    .4byte 0x408001D0 # bge .L_802E6BB8
    .4byte 0x4800017C # b .L_802E6B68
L_802E69F0:
    lfs 6, 0x10(31)
    addi 3, 1, 0x8
    lfs 2, 0xc(31)
    li 5, 0x0
    lfs 0, 0x60(31)
    .4byte 0xC022E298 # lfs f1, lbl_80541238@sda21(r0)
    stfs 0, 0x8(1)
    fadds 4, 0, 2
    lfs 0, 0x64(31)
    stfs 0, 0xc(1)
    fadds 3, 0, 6
    lfs 0, 0x68(31)
    stfs 0, 0x10(1)
    fadds 2, 0, 2
    lfs 5, 0x6c(31)
    fadds 0, 5, 6
    stfs 5, 0x14(1)
    stfs 4, 0x8(1)
    stfs 3, 0xc(1)
    stfs 2, 0x10(1)
    stfs 0, 0x14(1)
    lwz 4, 0x4(31)
    bl fn_8023AF14
    cmpwi 3, 0x0
    .4byte 0x41800168 # blt .L_802E6BB8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x0
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802E6A74
    li 4, 0x1
    stb 4, 0x7f5(3)
L_802E6A74:
    clrlwi 0, 4, 24
    cmplwi 0, 0x1
    .4byte 0x4082013C # bne .L_802E6BB8
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820020 # beq .L_802E6AA8
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_802E6AA8:
    li 0, 0x1
    stw 0, 0x230(31)
    lwz 0, 0x23c(31)
    stw 0, 0x240(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x418200F8 # beq .L_802E6BB8
    lis 3, lbl_8046F260@ha
    slwi 0, 0, 2
    addi 4, 3, lbl_8046F260@l
    mr 3, 31
    lwzx 4, 4, 0
    bl fn_801F0D20
    .4byte 0x480000DC # b .L_802E6BB8
L_802E6AE0:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_802E6B14
    bl fn_8023077C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200C0 # bne .L_802E6BB8
    li 0, 0x2
    mr 3, 31
    stw 0, 0x230(31)
    li 4, 0x3c
    bl fn_801F0D20
    .4byte 0x480000A8 # b .L_802E6BB8
L_802E6B14:
    li 0, 0x2
    li 4, 0x3c
    stw 0, 0x230(31)
    bl fn_801F0D20
    .4byte 0x48000094 # b .L_802E6BB8
L_802E6B28:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802E6B44
    li 0, 0x1
    stb 0, 0x7f5(3)
L_802E6B44:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_802E6B5C
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48000060 # b .L_802E6BB8
L_802E6B5C:
    subi 0, 3, 0x1
    stw 0, 0x240(31)
    .4byte 0x48000054 # b .L_802E6BB8
L_802E6B68:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802E6B84
    li 0, 0x1
    stb 0, 0x7f5(3)
L_802E6B84:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_802E6BB0
    li 3, 0x0
    bl fn_80230534
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_802E6BB8
    mr 3, 31
    bl fn_801F3668
    .4byte 0x4800000C # b .L_802E6BB8
L_802E6BB0:
    mr 3, 31
    bl fn_801F3668
L_802E6BB8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

