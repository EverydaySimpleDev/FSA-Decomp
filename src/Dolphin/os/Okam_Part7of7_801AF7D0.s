# OKAM cluster, part 7/7 (324B, no extab - leaf). Shared private
# helper (called from both the update() state handler and setParams) -
# a "phase/timer configure" table lookup: picks a fixed float constant
# by state, sets this->0x278/0x27c/0x280/0x254, then advances a
# running counter (this->0x24c += this->0x240).
.text
.balign 4
.global fn_801AF7D0

fn_801AF7D0:
    lwz 0, 0x258(3)
    cmpw 0, 4
    beqlr
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_801AF7EC
    cmpwi 4, 0x1
    beqlr
L_801AF7EC:
    cmpwi 0, 0x6
    .4byte 0x40820010 # bne .L_801AF800
    cmpwi 4, 0x5
    .4byte 0x40820008 # bne .L_801AF800
    blr
L_801AF800:
    stw 4, 0x258(3)
    li 5, 0x0
    stb 5, 0x25c(3)
    stw 5, 0x234(3)
    stw 5, 0x240(3)
    lwz 0, 0x258(3)
    cmplwi 0, 0x7
    .4byte 0x418100DC # bgt .L_801AF8F8
    lis 4, jumptable_804A34D8@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A34D8@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    stw 5, 0x254(3)
    .4byte 0x480000BC # b .L_801AF8F8
    li 0, 0x4
    .4byte 0xC002B898 # lfs f0, lbl_8053E838@sda21(r0)
    stw 0, 0x254(3)
    lfs 1, 0x260(3)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_801AF864
    .4byte 0xC002B8AC # lfs f0, lbl_8053E84C@sda21(r0)
    stfs 0, 0x278(3)
    .4byte 0x48000098 # b .L_801AF8F8
L_801AF864:
    .4byte 0xC002B8C8 # lfs f0, lbl_8053E868@sda21(r0)
    stfs 0, 0x278(3)
    .4byte 0x4800008C # b .L_801AF8F8
    .4byte 0xC002B898 # lfs f0, lbl_8053E838@sda21(r0)
    li 0, 0x18
    stfs 0, 0x280(3)
    stfs 0, 0x27c(3)
    stfs 0, 0x278(3)
    stw 0, 0x254(3)
    .4byte 0x48000070 # b .L_801AF8F8
    li 0, 0x8
    stw 0, 0x254(3)
    .4byte 0x48000064 # b .L_801AF8F8
    li 0, 0xc
    stw 0, 0x254(3)
    .4byte 0x48000058 # b .L_801AF8F8
    li 0, 0x10
    .4byte 0xC002B898 # lfs f0, lbl_8053E838@sda21(r0)
    stw 0, 0x254(3)
    lfs 1, 0x264(3)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_801AF8C8
    .4byte 0xC002B8AC # lfs f0, lbl_8053E84C@sda21(r0)
    stfs 0, 0x27c(3)
    .4byte 0x48000034 # b .L_801AF8F8
L_801AF8C8:
    .4byte 0xC002B8C8 # lfs f0, lbl_8053E868@sda21(r0)
    stfs 0, 0x27c(3)
    .4byte 0x48000028 # b .L_801AF8F8
    .4byte 0xC002B898 # lfs f0, lbl_8053E838@sda21(r0)
    li 0, 0x1b
    stfs 0, 0x280(3)
    stfs 0, 0x27c(3)
    stfs 0, 0x278(3)
    stw 0, 0x254(3)
    .4byte 0x4800000C # b .L_801AF8F8
    li 0, 0x14
    stw 0, 0x254(3)
L_801AF8F8:
    lwz 0, 0x254(3)
    stw 0, 0x24c(3)
    lwz 4, 0x24c(3)
    lwz 0, 0x240(3)
    add 0, 4, 0
    stw 0, 0x24c(3)
    blr

