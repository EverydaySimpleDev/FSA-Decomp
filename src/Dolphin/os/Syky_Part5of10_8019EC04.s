# SYKY cluster, part 5/10 (Track A byte-match + overview - 512B).
# update() state handler #1 - uses the confirmed ease primitive
# fn_801F71A4.
.section extab, "a"
.balign 4
.global etb_80007904
etb_80007904:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007904, 8

.section extabindex, "a"
.balign 4
.global eti_80014704
eti_80014704:
    .4byte fn_8019EC04
    .4byte 0x00000200
    .4byte etb_80007904
.size eti_80014704, 12

.text
.balign 4
.global fn_8019EC04

fn_8019EC04:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC042B4CC # lfs f2, lbl_8053E46C@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xC062B4C0 # lfs f3, lbl_8053E460@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    lfs 1, 0x2a0(3)
    addi 3, 31, 0x3c
    bl fn_801F71A4
    lfs 1, 0x2a4(31)
    addi 3, 31, 0x40
    .4byte 0xC042B4CC # lfs f2, lbl_8053E46C@sda21(r0)
    .4byte 0xC062B4C0 # lfs f3, lbl_8053E460@sda21(r0)
    bl fn_801F71A4
    li 0, 0x2710
    stw 0, 0x108(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_8019EC90
    lfs 1, 0xc(31)
    .4byte 0xC002B4EC # lfs f0, lbl_8053E48C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810028 # ble .L_8019ECA8
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800001C # b .L_8019ECA8
L_8019EC90:
    lfs 1, 0xc(31)
    .4byte 0xC002B4F0 # lfs f0, lbl_8053E490@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8019ECA8
    li 0, 0x0
    stb 0, 0x11c(31)
L_8019ECA8:
    lwz 0, 0x230(31)
    cmpwi 0, 0xf
    .4byte 0x41820068 # beq .L_8019ED18
    .4byte 0x408000E8 # bge .L_8019ED9C
    cmpwi 0, 0xe
    .4byte 0x40800008 # bge .L_8019ECC4
    .4byte 0x480000DC # b .L_8019ED9C
L_8019ECC4:
    .4byte 0xC002B4F4 # lfs f0, lbl_8053E494@sda21(r0)
    stfs 0, 0x2a0(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8019ECE0
    .4byte 0xC002B4F8 # lfs f0, lbl_8053E498@sda21(r0)
    stfs 0, 0x2a0(31)
L_8019ECE0:
    lfs 0, 0x10(31)
    stfs 0, 0x29c(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408200AC # bne .L_8019ED9C
    li 0, 0x4
    stw 0, 0x238(31)
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    clrlwi 0, 0, 31
    stw 0, 0x264(31)
    .4byte 0x48000088 # b .L_8019ED9C
L_8019ED18:
    .4byte 0xC022B4C0 # lfs f1, lbl_8053E460@sda21(r0)
    addi 3, 31, 0x290
    .4byte 0xC042B4FC # lfs f2, lbl_8053E49C@sda21(r0)
    .4byte 0xC062B500 # lfs f3, lbl_8053E4A0@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x29c(31)
    addi 3, 31, 0x10
    .4byte 0xC042B4CC # lfs f2, lbl_8053E46C@sda21(r0)
    .4byte 0xC062B4D4 # lfs f3, lbl_8053E474@sda21(r0)
    bl fn_801F71A4
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_8019ED6C
    li 0, 0x2
    stw 0, 0x238(31)
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    clrlwi 0, 0, 31
    stw 0, 0x264(31)
L_8019ED6C:
    lfs 2, 0x10(31)
    lfs 1, 0x29c(31)
    .4byte 0xC002B500 # lfs f0, lbl_8053E4A0@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8019ED9C
    .4byte 0xC002B4C0 # lfs f0, lbl_8053E460@sda21(r0)
    li 0, 0xe
    stfs 0, 0x290(31)
    stw 0, 0x230(31)
L_8019ED9C:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8019EDB0
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_8019EDB0:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8019EDC4
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_8019EDC4:
    addi 4, 31, 0x8
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8019EDDC
    subi 0, 3, 0x1
    stw 0, 0x238(4)
L_8019EDDC:
    lwz 3, 0x23c(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8019EDF0
    subi 0, 3, 0x1
    stw 0, 0x23c(4)
L_8019EDF0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

