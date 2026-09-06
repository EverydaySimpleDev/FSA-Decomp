# SAFU cluster, part 3/4 (Track A byte-match + overview - 344B).
# update()-related - uses the confirmed ease primitive fn_801F71A4.
.section extab, "a"
.balign 4
.global etb_80007C5C
etb_80007C5C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007C5C, 8

.section extabindex, "a"
.balign 4
.global eti_80014C08
eti_80014C08:
    .4byte fn_801B6854
    .4byte 0x00000158
    .4byte etb_80007C5C
.size eti_80014C08, 12

.text
.balign 4
.global fn_801B6854

fn_801B6854:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC042BB00 # lfs f2, lbl_8053EAA0@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xC062BAFC # lfs f3, lbl_8053EA9C@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    lfs 1, 0x24c(3)
    addi 3, 31, 0x3c
    bl fn_801F71A4
    lfs 1, 0x250(31)
    addi 3, 31, 0x40
    .4byte 0xC042BB00 # lfs f2, lbl_8053EAA0@sda21(r0)
    .4byte 0xC062BAFC # lfs f3, lbl_8053EA9C@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x264(31)
    addi 3, 31, 0x258
    .4byte 0xC042BB04 # lfs f2, lbl_8053EAA4@sda21(r0)
    .4byte 0xC062BB08 # lfs f3, lbl_8053EAA8@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x268(31)
    addi 3, 31, 0x25c
    .4byte 0xC042BB04 # lfs f2, lbl_8053EAA4@sda21(r0)
    .4byte 0xC062BB08 # lfs f3, lbl_8053EAA8@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x41820040 # beq .L_801B6920
    .4byte 0x40800074 # bge .L_801B6958
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801B68F8
    .4byte 0x48000068 # b .L_801B6958
    .4byte 0x48000064 # b .L_801B6958
L_801B68F8:
    lhz 0, 0x94(31)
    cmplwi 0, 0x0
    .4byte 0x41820058 # beq .L_801B6958
    li 0, 0x0
    .4byte 0xC002BB0C # lfs f0, lbl_8053EAAC@sda21(r0)
    sth 0, 0x94(31)
    li 0, 0x1
    stfs 0, 0x44(31)
    stw 0, 0x230(31)
    .4byte 0x4800003C # b .L_801B6958
L_801B6920:
    lfs 0, 0x14(31)
    .4byte 0xC042BAF8 # lfs f2, lbl_8053EA98@sda21(r0)
    fcmpo cr0, 0, 2
    .4byte 0x4080002C # bge .L_801B6958
    .4byte 0xC002BB10 # lfs f0, lbl_8053EAB0@sda21(r0)
    li 0, 0x2
    .4byte 0xC022BB14 # lfs f1, lbl_8053EAB4@sda21(r0)
    stfs 0, 0x258(31)
    .4byte 0xC002BAFC # lfs f0, lbl_8053EA9C@sda21(r0)
    stfs 1, 0x25c(31)
    stfs 0, 0x260(31)
    stfs 2, 0x14(31)
    stfs 2, 0x44(31)
    stw 0, 0x230(31)
L_801B6958:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B696C
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_801B696C:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B6980
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801B6980:
    addi 4, 31, 0x8
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B6998
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_801B6998:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

