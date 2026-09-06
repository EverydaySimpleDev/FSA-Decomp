# EGOL cluster, part 5/6 (204B, no extab - leaf). Another setParams-
# style default-field initializer - zeroes several state/timer fields
# (0x234-0x24c, 0x230), sets a few scalar defaults (0x3c/0x40/0x44/
# 0x25c/0x260/0x264/0x98/0xb8/0xbc/0x108/0x250/0x254/0x258), no calls.
.text
.balign 4
.global fn_801B0710

fn_801B0710:
    .4byte 0xC062B920 # lfs f3, lbl_8053E8C0@sda21(r0)
    li 8, 0x0
    .4byte 0xC042B924 # lfs f2, lbl_8053E8C4@sda21(r0)
    li 7, 0x1
    stfs 3, 0x60(3)
    li 6, 0x2
    .4byte 0xC0A2B928 # lfs f5, lbl_8053E8C8@sda21(r0)
    li 5, 0x12
    stfs 2, 0x64(3)
    li 4, 0x4
    .4byte 0xC022B92C # lfs f1, lbl_8053E8CC@sda21(r0)
    li 0, 0x3ef
    stfs 5, 0x68(3)
    .4byte 0xC002B930 # lfs f0, lbl_8053E8D0@sda21(r0)
    stfs 1, 0x6c(3)
    .4byte 0xC082B918 # lfs f4, lbl_8053E8B8@sda21(r0)
    stfs 3, 0x80(3)
    .4byte 0xC062B934 # lfs f3, lbl_8053E8D4@sda21(r0)
    stfs 2, 0x84(3)
    .4byte 0xC042B914 # lfs f2, lbl_8053E8B4@sda21(r0)
    stfs 5, 0x88(3)
    .4byte 0xC022B938 # lfs f1, lbl_8053E8D8@sda21(r0)
    stfs 0, 0x8c(3)
    .4byte 0xC002B8F0 # lfs f0, lbl_8053E890@sda21(r0)
    stfs 4, 0x70(3)
    stfs 3, 0x74(3)
    stfs 2, 0x78(3)
    stfs 1, 0x7c(3)
    stw 8, 0x244(3)
    stw 8, 0x248(3)
    stw 8, 0x24c(3)
    stw 8, 0x234(3)
    stw 8, 0x238(3)
    stw 8, 0x23c(3)
    stw 8, 0x240(3)
    stw 7, 0xb8(3)
    stw 6, 0x98(3)
    stw 5, 0x250(3)
    stw 4, 0xbc(3)
    stfs 0, 0x264(3)
    stfs 0, 0x260(3)
    stfs 0, 0x25c(3)
    stfs 0, 0x44(3)
    stfs 0, 0x40(3)
    stfs 0, 0x3c(3)
    stw 0, 0x108(3)
    stw 6, 0x258(3)
    lwz 0, 0x108(3)
    stw 0, 0x254(3)
    stw 8, 0x230(3)
    blr

