# fn_8040384C - actor@lbl_804B0FE0: constructor (0x2FC)
# Uses __construct_array (__construct_array). Vtable is short + own PTMF table
# (populated at runtime) pointing at fn_8040F35C/fn_8040F3AC below.
.section extab, "a"
.balign 4
.global etb_80010274
etb_80010274:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80010274, 8

.section extabindex, "a"
.balign 4
.global eti_80020044
eti_80020044:
    .4byte fn_8040384C
    .4byte 0x000002FC
    .4byte etb_80010274
.size eti_80020044, 12

.text
.balign 4
.global fn_8040384C

fn_8040384C:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804B0FE0@ha
    li 5, 0x0
    stw 0, 0x14(1)
    addi 0, 4, lbl_804B0FE0@l
    li 6, 0xc
    li 7, 0x4
    stw 31, 0xc(1)
    mr 31, 3
    lis 3, fn_8003B2CC@ha
    stw 0, 0x0(31)
    addi 4, 3, fn_8003B2CC@l
    addi 3, 31, 0x1c4
    bl __construct_array
    li 3, 0x0
    li 0, 0x4
    stw 3, 0x4(31)
    mr 7, 31
    mr 8, 31
    .4byte 0xC00208D8 # lfs f0, lbl_80543878@sda21(r0)
    stw 3, 0x8(31)
    stw 3, 0xc(31)
    stw 3, 0x10(31)
    stw 3, 0x14(31)
    stw 3, 0x18(31)
    stw 3, 0x1c(31)
    stw 3, 0x20(31)
    stw 3, 0x24(31)
    stw 3, 0x28(31)
    stw 3, 0x2c(31)
    stw 3, 0x30(31)
    stw 3, 0x34(31)
    stw 3, 0x38(31)
    stw 3, 0x3c(31)
    stw 3, 0x40(31)
    stw 3, 0x44(31)
    stw 3, 0x48(31)
    stw 3, 0x4c(31)
    stw 3, 0x50(31)
    stw 3, 0x54(31)
    stw 3, 0x58(31)
    stw 3, 0x5c(31)
    stw 3, 0x60(31)
    stw 3, 0x1b0(31)
    stb 3, 0x214(31)
    stb 3, 0x215(31)
    stb 3, 0x216(31)
    stb 3, 0x217(31)
    stb 3, 0x218(31)
    stb 3, 0x219(31)
    stb 3, 0x21a(31)
    stb 3, 0x21b(31)
    stb 3, 0x21c(31)
    stb 3, 0x21d(31)
    stb 3, 0x21e(31)
    stb 3, 0x21f(31)
    stb 3, 0x220(31)
    stb 3, 0x221(31)
    stb 3, 0x222(31)
    stb 3, 0x223(31)
    stb 3, 0x224(31)
    stb 3, 0x225(31)
    stb 3, 0x226(31)
    stb 3, 0x227(31)
    stb 3, 0x228(31)
    stb 3, 0x229(31)
    stb 3, 0x22a(31)
    stb 3, 0x22b(31)
    stb 3, 0x22c(31)
    stb 3, 0x22d(31)
    stb 3, 0x22e(31)
    stb 3, 0x22f(31)
    stb 3, 0x230(31)
    stb 3, 0x231(31)
    stb 3, 0x232(31)
    stb 3, 0x233(31)
    stb 3, 0x234(31)
    stb 3, 0x235(31)
    mtctr 0
L_8040398C:
    li 6, 0x0
    li 5, 0x1
    stw 6, 0x68(7)
    li 4, 0x2
    li 3, 0x4
    li 0, 0x80
    stw 5, 0x78(7)
    stw 4, 0x88(7)
    stw 6, 0x98(7)
    stw 5, 0xa8(7)
    stw 4, 0xb8(7)
    stw 6, 0xe8(7)
    stw 3, 0xd8(7)
    stw 3, 0xc8(7)
    stw 0, 0x108(7)
    stw 6, 0xf8(7)
    stw 6, 0x130(7)
    stw 6, 0x140(7)
    stw 6, 0x150(7)
    stw 6, 0x160(7)
    stw 6, 0x170(7)
    stw 6, 0x180(7)
    stw 6, 0x190(7)
    addi 7, 7, 0x4
    stfs 0, 0x1c4(8)
    stfs 0, 0x1c8(8)
    stfs 0, 0x1cc(8)
    addi 8, 8, 0xc
    .4byte 0x4200FF90 # bdnz .L_8040398C
    li 4, -0x1
    li 0, 0xff
    stw 4, 0x64(31)
    mr 3, 31
    stw 4, 0x1a8(31)
    stb 6, 0x236(31)
    stw 6, 0x118(31)
    stw 6, 0x11c(31)
    stw 6, 0x120(31)
    stw 6, 0x124(31)
    stw 6, 0x128(31)
    stw 6, 0x12c(31)
    stb 6, 0x237(31)
    stb 0, 0x238(31)
    stb 6, 0x23a(31)
    stb 6, 0x23b(31)
    stb 6, 0x23c(31)
    stb 6, 0x23d(31)
    stb 6, 0x239(31)
    stw 6, 0x1a0(31)
    stw 4, 0x1a4(31)
    stw 6, 0x1ac(31)
    stb 6, 0x253(31)
    stb 6, 0x254(31)
    stw 6, 0x1b4(31)
    sth 6, 0x1f4(31)
    stw 6, 0x1b8(31)
    sth 6, 0x1f6(31)
    stw 6, 0x1bc(31)
    sth 6, 0x1f8(31)
    stw 6, 0x1c0(31)
    sth 6, 0x1fa(31)
    stb 0, 0x1fc(31)
    stb 0, 0x1fd(31)
    stb 0, 0x1fe(31)
    stb 0, 0x1ff(31)
    stb 0, 0x200(31)
    stb 0, 0x201(31)
    stb 0, 0x202(31)
    stb 0, 0x203(31)
    stb 0, 0x204(31)
    stb 0, 0x205(31)
    stb 0, 0x206(31)
    stb 0, 0x207(31)
    stb 0, 0x208(31)
    stb 0, 0x209(31)
    stb 0, 0x20a(31)
    stb 0, 0x20b(31)
    stb 0, 0x20c(31)
    stb 0, 0x20d(31)
    stb 0, 0x20e(31)
    stb 0, 0x20f(31)
    stb 0, 0x210(31)
    stb 0, 0x211(31)
    stb 0, 0x212(31)
    stb 0, 0x213(31)
    stb 5, 0x241(31)
    stb 6, 0x242(31)
    stb 6, 0x243(31)
    stb 6, 0x23e(31)
    stb 6, 0x23f(31)
    stb 6, 0x240(31)
    stb 6, 0x244(31)
    stb 6, 0x245(31)
    stb 5, 0x246(31)
    stb 6, 0x247(31)
    stb 6, 0x249(31)
    stb 0, 0x248(31)
    stb 6, 0x24a(31)
    stb 6, 0x24b(31)
    stb 6, 0x24c(31)
    stb 6, 0x24d(31)
    stb 6, 0x24e(31)
    stb 6, 0x24f(31)
    stb 6, 0x250(31)
    stb 6, 0x251(31)
    stb 6, 0x252(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

