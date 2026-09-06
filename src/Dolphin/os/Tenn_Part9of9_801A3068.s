# TENN cluster, part 9/9 (800B). setParams - pure numeric field
# initialization (default floats/state, no calls).
.section extab, "a"
.balign 4
.global etb_8000797C
etb_8000797C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000797C, 8

.section extabindex, "a"
.balign 4
.global eti_800147B8
eti_800147B8:
    .4byte fn_801A3068
    .4byte 0x00000320
    .4byte etb_8000797C
.size eti_800147B8, 12

.text
.balign 4
.global fn_801A3068

fn_801A3068:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC042B550 # lfs f2, lbl_8053E4F0@sda21(r0)
    stw 0, 0x14(1)
    li 0, -0x1
    .4byte 0xC022B55C # lfs f1, lbl_8053E4FC@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0x0
    .4byte 0xC002B5F4 # lfs f0, lbl_8053E594@sda21(r0)
    stw 3, 0x248(31)
    stw 3, 0x24c(31)
    stw 3, 0x250(31)
    stw 3, 0x254(31)
    stw 3, 0x258(31)
    stw 3, 0x25c(31)
    stw 3, 0x260(31)
    stw 3, 0x238(31)
    stw 3, 0x23c(31)
    stw 3, 0x240(31)
    stw 3, 0x244(31)
    stw 3, 0x2c8(31)
    stw 3, 0x2cc(31)
    stw 3, 0x2d0(31)
    stw 3, 0x2d4(31)
    stw 3, 0x2d8(31)
    stw 3, 0x2dc(31)
    stw 3, 0x2e0(31)
    stw 3, 0x2e4(31)
    stw 3, 0x2e8(31)
    stw 3, 0x2ec(31)
    stw 3, 0x2f0(31)
    stw 3, 0x2f4(31)
    stw 3, 0x2f8(31)
    stw 3, 0x2fc(31)
    stw 3, 0x300(31)
    stw 3, 0x304(31)
    stw 3, 0x308(31)
    stw 3, 0x30c(31)
    stw 3, 0x310(31)
    stw 3, 0x314(31)
    stw 3, 0x28c(31)
    stw 0, 0x27c(31)
    stw 3, 0x29c(31)
    stw 3, 0x2ac(31)
    stb 3, 0x2bc(31)
    stw 3, 0x344(31)
    stw 3, 0x290(31)
    stw 0, 0x280(31)
    stw 3, 0x2a0(31)
    stw 3, 0x2b0(31)
    stb 3, 0x2bd(31)
    stw 3, 0x348(31)
    stw 3, 0x294(31)
    stw 0, 0x284(31)
    stw 3, 0x2a4(31)
    stw 3, 0x2b4(31)
    stb 3, 0x2be(31)
    stw 3, 0x34c(31)
    stw 3, 0x298(31)
    stw 0, 0x288(31)
    stw 3, 0x2a8(31)
    stw 3, 0x2b8(31)
    stb 3, 0x2bf(31)
    stw 3, 0x350(31)
    stw 3, 0x31c(31)
    stw 0, 0x2c4(31)
    stw 3, 0x318(31)
    stw 3, 0x264(31)
    stw 3, 0x268(31)
    stfs 2, 0x33c(31)
    stfs 1, 0x324(31)
    stfs 1, 0x328(31)
    stfs 1, 0x32c(31)
    stfs 1, 0x330(31)
    stfs 1, 0x334(31)
    stfs 1, 0x338(31)
    stfs 0, 0x340(31)
    stw 0, 0x278(31)
    stw 3, 0x2c0(31)
    stw 0, 0x320(31)
    stw 3, 0x26c(31)
    stb 3, 0x270(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 28
    stw 0, 0x274(31)
    lwz 0, 0x274(31)
    cmpwi 0, 0x1
    .4byte 0x41820128 # beq .L_801A32F0
    .4byte 0x40800010 # bge .L_801A31DC
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_801A31E8
    .4byte 0x4800019C # b .L_801A3374
L_801A31DC:
    cmpwi 0, 0x3
    .4byte 0x40800194 # bge .L_801A3374
    .4byte 0x48000150 # b .L_801A3334
L_801A31E8:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_801A3250
    lwz 4, 0x98(31)
    lis 3, lbl_804A2B90@ha
    lwz 0, 0x248(31)
    addi 3, 3, lbl_804A2B90@l
    slwi 4, 4, 2
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x264(31)
    lwz 0, 0x248(31)
    clrlwi. 0, 0, 31
    .4byte 0x40820010 # bne .L_801A3230
    li 0, 0xc
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_801A3238
L_801A3230:
    li 0, 0xa
    stw 0, 0x238(31)
L_801A3238:
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    clrlwi 0, 0, 30
    stw 0, 0x248(31)
L_801A3250:
    lis 3, 0xa04
    .4byte 0xC042B5F8 # lfs f2, lbl_8053E598@sda21(r0)
    addi 0, 3, 0x4
    .4byte 0xC022B5FC # lfs f1, lbl_8053E59C@sda21(r0)
    stw 0, 0xb0(31)
    li 4, 0x2
    .4byte 0xC002B600 # lfs f0, lbl_8053E5A0@sda21(r0)
    li 0, 0x0
    stfs 2, 0x60(31)
    mr 3, 31
    .4byte 0xC042B604 # lfs f2, lbl_8053E5A4@sda21(r0)
    stfs 1, 0x64(31)
    .4byte 0xC022B608 # lfs f1, lbl_8053E5A8@sda21(r0)
    stfs 0, 0x68(31)
    .4byte 0xC002B5B4 # lfs f0, lbl_8053E554@sda21(r0)
    stfs 2, 0x6c(31)
    .4byte 0xC042B60C # lfs f2, lbl_8053E5AC@sda21(r0)
    stfs 1, 0x70(31)
    .4byte 0xC022B59C # lfs f1, lbl_8053E53C@sda21(r0)
    stfs 0, 0x74(31)
    .4byte 0xC002B558 # lfs f0, lbl_8053E4F8@sda21(r0)
    stfs 2, 0x78(31)
    stfs 1, 0x7c(31)
    stw 4, 0x98(31)
    .4byte 0x900D9000 # stw r0, lbl_8053ABC0@sda21(r0)
    .4byte 0x980D9005 # stb r0, lbl_8053ABC5@sda21(r0)
    .4byte 0x980D9004 # stb r0, lbl_8053ABC4@sda21(r0)
    .4byte 0xD00D8538 # stfs f0, lbl_8053A0F8@sda21(r0)
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801A32E4
    li 0, 0xb
    stw 0, 0x230(31)
    .4byte 0x48000094 # b .L_801A3374
L_801A32E4:
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000088 # b .L_801A3374
L_801A32F0:
    li 0, 0x2710
    .4byte 0xC002B5B4 # lfs f0, lbl_8053E554@sda21(r0)
    stw 0, 0x108(31)
    li 0, 0xe
    .4byte 0xC042B59C # lfs f2, lbl_8053E53C@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC022B564 # lfs f1, lbl_8053E504@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002B558 # lfs f0, lbl_8053E4F8@sda21(r0)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x230(31)
    .4byte 0x48000044 # b .L_801A3374
L_801A3334:
    li 0, 0x2710
    .4byte 0xC002B5B4 # lfs f0, lbl_8053E554@sda21(r0)
    stw 0, 0x108(31)
    li 0, 0x12
    .4byte 0xC042B59C # lfs f2, lbl_8053E53C@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC022B564 # lfs f1, lbl_8053E504@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002B558 # lfs f0, lbl_8053E4F8@sda21(r0)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x230(31)
L_801A3374:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

