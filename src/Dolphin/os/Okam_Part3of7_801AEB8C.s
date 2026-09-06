# OKAM cluster, part 3/7 (Track A byte-match + overview - 1232B).
# update() state handler - calls its own private helpers fn_801AF1EC/
# fn_801AF678/fn_801AF7D0 (landed alongside), uses the confirmed
# knockback fn_801F3D94, ease fn_801F71A4, the random-point-in-rect
# fn_801F23BC, the player validity family fn_8022DCD8/fn_80230188/
# fn_8023DE58/Player_GetCapabilityFlagByIndex, player position fn_8023E724, fn_801F0E34/
# fn_801F2618/fn_8022F478, plus unfamiliar fn_80235580.
.section extab, "a"
.balign 4
.global etb_80007B44
etb_80007B44:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_80007B44, 8

.section extabindex, "a"
.balign 4
.global eti_80014A64
eti_80014A64:
    .4byte fn_801AEB8C
    .4byte 0x000004D0
    .4byte etb_80007B44
.size eti_80014A64, 12

.text
.balign 4
.global fn_801AEB8C

fn_801AEB8C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr 31, 3
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_801AEBD4
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000468 # b .L_801AF038
L_801AEBD4:
    lfs 1, 0x260(31)
    addi 3, 31, 0x3c
    .4byte 0xC042B89C # lfs f2, lbl_8053E83C@sda21(r0)
    .4byte 0xC062B8A0 # lfs f3, lbl_8053E840@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x264(31)
    addi 3, 31, 0x40
    .4byte 0xC042B89C # lfs f2, lbl_8053E83C@sda21(r0)
    .4byte 0xC062B8A0 # lfs f3, lbl_8053E840@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x278(31)
    addi 3, 31, 0x26c
    .4byte 0xC042B8A4 # lfs f2, lbl_8053E844@sda21(r0)
    .4byte 0xC062B8A0 # lfs f3, lbl_8053E840@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x27c(31)
    addi 3, 31, 0x270
    .4byte 0xC042B8A4 # lfs f2, lbl_8053E844@sda21(r0)
    .4byte 0xC062B8A0 # lfs f3, lbl_8053E840@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801AF1EC
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x4182032C # beq .L_801AEF90
    .4byte 0x40800014 # bge .L_801AEC7C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801AEC88
    .4byte 0x40800048 # bge .L_801AECBC
    .4byte 0x48000378 # b .L_801AEFF0
L_801AEC7C:
    cmpwi 0, 0x4
    .4byte 0x40800370 # bge .L_801AEFF0
    .4byte 0x48000358 # b .L_801AEFDC
L_801AEC88:
    li 0, -0x1
    .4byte 0xC002B898 # lfs f0, lbl_8053E838@sda21(r0)
    stw 0, 0x244(31)
    li 4, 0x0
    li 0, 0x1
    stfs 0, 0x268(31)
    stfs 0, 0x264(31)
    stfs 0, 0x260(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 4, 0x238(31)
    stw 0, 0x230(31)
L_801AECBC:
    clrlwi. 0, 3, 24
    .4byte 0x41820064 # beq .L_801AED24
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_801AECEC
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_801AECEC
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_801AECEC
    li 0, 0x2
    stw 0, 0x230(31)
L_801AECEC:
    lfs 0, 0x260(31)
    .4byte 0xC022B8A8 # lfs f1, lbl_8053E848@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x260(31)
    lfs 0, 0x264(31)
    fmuls 0, 0, 1
    stfs 0, 0x264(31)
    lfs 0, 0x3c(31)
    fmuls 0, 0, 1
    stfs 0, 0x3c(31)
    lfs 0, 0x40(31)
    fmuls 0, 0, 1
    stfs 0, 0x40(31)
    .4byte 0x480002D0 # b .L_801AEFF0
L_801AED24:
    li 29, 0x0
L_801AED28:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820214 # beq .L_801AEF48
    lwz 30, 0x4(31)
    mr 3, 29
    bl fn_8023DE58
    cmpw 30, 3
    .4byte 0x40820200 # bne .L_801AEF48
    mr 3, 29
    bl fn_80235580
    clrlwi. 0, 3, 24
    .4byte 0x408201F0 # bne .L_801AEF48
    mr 3, 29
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x408201E0 # bne .L_801AEF48
    mr 3, 29
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x408201D0 # bne .L_801AEF48
    mr 3, 29
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x408201C0 # bne .L_801AEF48
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 29
    lfs 0, 0xc(31)
    fsubs 0, 0, 1
    fabs 0, 0
    frsp 31, 0
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(31)
    lwz 0, 0x98(31)
    fsubs 0, 0, 1
    rlwinm. 0, 0, 0, 30, 30
    fabs 0, 0
    frsp 1, 0
    .4byte 0x40820010 # bne .L_801AEDDC
    .4byte 0xC002B8AC # lfs f0, lbl_8053E84C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41800018 # blt .L_801AEDF0
L_801AEDDC:
    cmpwi 0, 0x0
    .4byte 0x41820168 # beq .L_801AEF48
    .4byte 0xC002B8AC # lfs f0, lbl_8053E84C@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x4080015C # bge .L_801AEF48
L_801AEDF0:
    mr 3, 29
    bl fn_8023E724
    lwz 4, 0x4(31)
    mr 6, 3
    mr 3, 31
    addi 5, 31, 0xc
    addi 7, 31, 0x70
    addi 8, 1, 0x18
    addi 9, 1, 0xc
    li 10, 0x0
    bl fn_801F23BC
    clrlwi. 0, 3, 24
    .4byte 0x40820128 # bne .L_801AEF48
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_801AEE38
    cmpw 0, 29
    .4byte 0x40820114 # bne .L_801AEF48
L_801AEE38:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408201B0 # bne .L_801AEFF0
    lis 4, 0x4
    stw 29, 0x244(31)
    mr 3, 31
    li 5, 0x0
    addi 4, 4, 0xd3
    bl fn_801F0E34
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_801AEE98
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_801AEE8C
    .4byte 0xC002B8B0 # lfs f0, lbl_8053E850@sda21(r0)
    stfs 0, 0x260(31)
    .4byte 0x4800003C # b .L_801AEEC4
L_801AEE8C:
    .4byte 0xC002B8B4 # lfs f0, lbl_8053E854@sda21(r0)
    stfs 0, 0x260(31)
    .4byte 0x48000030 # b .L_801AEEC4
L_801AEE98:
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_801AEEBC
    .4byte 0xC002B8B0 # lfs f0, lbl_8053E850@sda21(r0)
    stfs 0, 0x264(31)
    .4byte 0x4800000C # b .L_801AEEC4
L_801AEEBC:
    .4byte 0xC002B8B4 # lfs f0, lbl_8053E854@sda21(r0)
    stfs 0, 0x264(31)
L_801AEEC4:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_801AEEE0
    mr 3, 31
    li 4, 0x1
    bl fn_801AF7D0
    .4byte 0x48000010 # b .L_801AEEEC
L_801AEEE0:
    mr 3, 31
    li 4, 0x5
    bl fn_801AF7D0
L_801AEEEC:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002B8A0 # lfs f0, lbl_8053E840@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042B8B8 # lfs f2, lbl_8053E858@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 3, 0x2c(1)
    addi 0, 3, 0x32
    stw 0, 0x238(31)
    .4byte 0x480000AC # b .L_801AEFF0
L_801AEF48:
    lwz 0, 0x244(31)
    cmpw 0, 29
    .4byte 0x40820030 # bne .L_801AEF80
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_801AEF68
    cmpwi 0, 0x4
    .4byte 0x40820010 # bne .L_801AEF74
L_801AEF68:
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000080 # b .L_801AEFF0
L_801AEF74:
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000074 # b .L_801AEFF0
L_801AEF80:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FDA0 # blt .L_801AED28
    .4byte 0x48000064 # b .L_801AEFF0
L_801AEF90:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_801AEFAC
    mr 3, 31
    li 4, 0x3
    bl fn_801AF7D0
    .4byte 0x48000010 # b .L_801AEFB8
L_801AEFAC:
    mr 3, 31
    li 4, 0x7
    bl fn_801AF7D0
L_801AEFB8:
    .4byte 0xC002B898 # lfs f0, lbl_8053E838@sda21(r0)
    li 0, 0x3
    stfs 0, 0x268(31)
    stfs 0, 0x264(31)
    stfs 0, 0x260(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x230(31)
L_801AEFDC:
    lbz 0, 0x25c(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_801AEFF0
    li 0, 0x0
    stw 0, 0x230(31)
L_801AEFF0:
    mr 3, 31
    bl fn_801AF678
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801AF00C
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_801AF00C:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801AF020
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801AF020:
    addi 4, 31, 0x8
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801AF038
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_801AF038:
    psq_l 31, 0x48(1), 0, 0
    lwz 0, 0x54(1)
    lfd 31, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

