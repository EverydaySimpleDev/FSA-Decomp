# fn_8037CE5C (0x928, much larger than the standard 0x224 copy): the SAME
# "9-guard/9-target" per-TU thunk pattern (see extab_8043414c.s), private
# table lbl_8050D900, PLUS a much LARGER ring/history-buffer shift
# prologue on lbl_804AE9C0 (dozens of words shifted by +0x288, vs. the
# 6-12 word variants seen elsewhere in this gap) - confirms this shift
# idiom scales arbitrarily by site, not just the small handful of sizes
# seen before.
.section extab, "a"
.balign 4
.global etb_8000EC40
etb_8000EC40:
    .4byte 0x90080000
    .4byte 0x00000000
.size etb_8000EC40, 8

.section extabindex, "a"
.balign 4
.global eti_8001E9AC
eti_8001E9AC:
    .4byte fn_8037CE5C
    .4byte 0x00000928
    .4byte etb_8000EC40
.size eti_8001E9AC, 12

.text
.balign 4
.global fn_8037CE5C

fn_8037CE5C:
    stwu 1, -0x150(1)
    mflr 0
    stw 0, 0x154(1)
    stmw 14, 0x108(1)
    lis 3, lbl_804AE9C0@ha
    lis 4, lbl_8050D900@ha
    addi 16, 3, lbl_804AE9C0@l
    lwz 29, 0x64(16)
    addi 31, 4, lbl_8050D900@l
    lwz 28, 0x0(16)
    addi 17, 16, 0x288
    lwz 0, 0x5c(16)
    stw 29, 0xec(1)
    lwz 29, 0x68(16)
    stw 0, 0x5c(17)
    lwz 0, 0xec(1)
    stw 29, 0x8(1)
    lwz 29, 0x6c(16)
    stw 0, 0x64(17)
    lwz 0, 0x8(1)
    stw 29, 0xc(1)
    lwz 29, 0x70(16)
    stw 0, 0x68(17)
    lwz 0, 0xc(1)
    stw 29, 0x10(1)
    lwz 29, 0x74(16)
    stw 0, 0x6c(17)
    lwz 0, 0x10(1)
    stw 29, 0x14(1)
    lwz 29, 0x78(16)
    stw 0, 0x70(17)
    lwz 0, 0x14(1)
    stw 29, 0x18(1)
    lwz 29, 0x7c(16)
    stw 0, 0x74(17)
    lwz 0, 0x18(1)
    stw 29, 0x1c(1)
    lwz 29, 0x80(16)
    stw 0, 0x78(17)
    lwz 0, 0x1c(1)
    stw 29, 0x20(1)
    lwz 29, 0x84(16)
    stw 0, 0x7c(17)
    lwz 0, 0x20(1)
    stw 29, 0x24(1)
    lwz 29, 0x88(16)
    stw 0, 0x80(17)
    lwz 0, 0x24(1)
    stw 29, 0x28(1)
    lwz 29, 0x8c(16)
    stw 0, 0x84(17)
    lwz 0, 0x28(1)
    stw 29, 0x2c(1)
    lwz 29, 0x90(16)
    stw 0, 0x88(17)
    lwz 0, 0x2c(1)
    stw 29, 0x30(1)
    lwz 29, 0x94(16)
    stw 0, 0x8c(17)
    lwz 0, 0x30(1)
    stw 29, 0x34(1)
    lwz 29, 0x98(16)
    stw 0, 0x90(17)
    lwz 0, 0x34(1)
    stw 29, 0x38(1)
    lwz 29, 0x9c(16)
    stw 0, 0x94(17)
    lwz 0, 0x38(1)
    stw 29, 0x3c(1)
    lwz 29, 0xa0(16)
    stw 0, 0x98(17)
    lwz 0, 0x3c(1)
    stw 29, 0x40(1)
    lwz 29, 0xa4(16)
    stw 0, 0x9c(17)
    lwz 0, 0x40(1)
    lwz 27, 0x4(16)
    lwz 26, 0x8(16)
    lwz 25, 0xc(16)
    lwz 24, 0x10(16)
    lwz 23, 0x14(16)
    lwz 22, 0x18(16)
    lwz 21, 0x1c(16)
    lwz 20, 0x20(16)
    lwz 19, 0x24(16)
    lwz 18, 0x28(16)
    lwz 15, 0x2c(16)
    lwz 14, 0x30(16)
    lwz 12, 0x34(16)
    lwz 11, 0x38(16)
    lwz 10, 0x3c(16)
    lwz 9, 0x40(16)
    lwz 8, 0x44(16)
    lwz 7, 0x48(16)
    lwz 6, 0x4c(16)
    lwz 5, 0x50(16)
    lwz 4, 0x54(16)
    lwz 3, 0x58(16)
    lwz 30, 0x60(16)
    stw 0, 0xa0(17)
    mr 0, 29
    stw 29, 0x44(1)
    stw 28, 0x288(16)
    stw 27, 0x28c(16)
    stw 26, 0x290(16)
    stw 25, 0xc(17)
    stw 24, 0x10(17)
    stw 23, 0x14(17)
    stw 22, 0x18(17)
    stw 21, 0x1c(17)
    stw 20, 0x20(17)
    stw 19, 0x24(17)
    stw 18, 0x28(17)
    stw 15, 0x2c(17)
    stw 14, 0x30(17)
    stw 12, 0x34(17)
    stw 11, 0x38(17)
    stw 10, 0x3c(17)
    stw 9, 0x40(17)
    stw 8, 0x44(17)
    stw 7, 0x48(17)
    stw 6, 0x4c(17)
    stw 5, 0x50(17)
    stw 4, 0x54(17)
    stw 3, 0x58(17)
    stw 30, 0x60(17)
    stw 0, 0xa4(17)
    lwz 29, 0x10c(16)
    lwz 0, 0x104(16)
    stw 29, 0xf0(1)
    lwz 29, 0x110(16)
    stw 0, 0x104(17)
    lwz 0, 0xf0(1)
    stw 29, 0x48(1)
    lwz 29, 0x114(16)
    stw 0, 0x10c(17)
    lwz 0, 0x48(1)
    stw 29, 0x4c(1)
    lwz 29, 0x118(16)
    stw 0, 0x110(17)
    lwz 0, 0x4c(1)
    stw 29, 0x50(1)
    lwz 29, 0x11c(16)
    stw 0, 0x114(17)
    lwz 0, 0x50(1)
    stw 29, 0x54(1)
    lwz 29, 0x120(16)
    stw 0, 0x118(17)
    lwz 0, 0x54(1)
    stw 29, 0x58(1)
    lwz 29, 0x124(16)
    stw 0, 0x11c(17)
    lwz 0, 0x58(1)
    stw 29, 0x5c(1)
    lwz 29, 0x128(16)
    stw 0, 0x120(17)
    lwz 0, 0x5c(1)
    stw 29, 0x60(1)
    lwz 29, 0x12c(16)
    stw 0, 0x124(17)
    lwz 0, 0x60(1)
    stw 29, 0x64(1)
    lwz 29, 0x130(16)
    stw 0, 0x128(17)
    lwz 0, 0x64(1)
    stw 29, 0x68(1)
    lwz 29, 0x134(16)
    stw 0, 0x12c(17)
    lwz 0, 0x68(1)
    stw 29, 0x6c(1)
    lwz 29, 0x138(16)
    stw 0, 0x130(17)
    lwz 0, 0x6c(1)
    stw 29, 0x70(1)
    lwz 29, 0x13c(16)
    stw 0, 0x134(17)
    lwz 0, 0x70(1)
    stw 29, 0x74(1)
    lwz 29, 0x140(16)
    stw 0, 0x138(17)
    lwz 0, 0x74(1)
    stw 29, 0x78(1)
    lwz 29, 0x144(16)
    stw 0, 0x13c(17)
    lwz 0, 0x78(1)
    stw 29, 0x7c(1)
    lwz 29, 0x148(16)
    stw 0, 0x140(17)
    lwz 0, 0x7c(1)
    stw 29, 0x80(1)
    lwz 29, 0x14c(16)
    stw 0, 0x144(17)
    lwz 0, 0x80(1)
    stw 29, 0x84(1)
    lwz 29, 0x150(16)
    stw 0, 0x148(17)
    lwz 0, 0x84(1)
    stw 29, 0x88(1)
    lwz 29, 0x154(16)
    stw 0, 0x14c(17)
    lwz 0, 0x88(1)
    stw 29, 0x8c(1)
    lwz 29, 0x158(16)
    stw 0, 0x150(17)
    lwz 0, 0x8c(1)
    lwz 28, 0xa8(16)
    lwz 27, 0xac(16)
    lwz 26, 0xb0(16)
    lwz 25, 0xb4(16)
    lwz 24, 0xb8(16)
    lwz 23, 0xbc(16)
    lwz 22, 0xc0(16)
    lwz 21, 0xc4(16)
    lwz 20, 0xc8(16)
    lwz 19, 0xcc(16)
    lwz 18, 0xd0(16)
    lwz 15, 0xd4(16)
    lwz 14, 0xd8(16)
    lwz 12, 0xdc(16)
    lwz 11, 0xe0(16)
    lwz 10, 0xe4(16)
    lwz 9, 0xe8(16)
    lwz 8, 0xec(16)
    lwz 7, 0xf0(16)
    lwz 6, 0xf4(16)
    lwz 5, 0xf8(16)
    lwz 4, 0xfc(16)
    lwz 3, 0x100(16)
    lwz 30, 0x108(16)
    stw 0, 0x154(17)
    mr 0, 29
    stw 29, 0x90(1)
    stw 28, 0xa8(17)
    stw 27, 0xac(17)
    stw 26, 0xb0(17)
    stw 25, 0xb4(17)
    stw 24, 0xb8(17)
    stw 23, 0xbc(17)
    stw 22, 0xc0(17)
    stw 21, 0xc4(17)
    stw 20, 0xc8(17)
    stw 19, 0xcc(17)
    stw 18, 0xd0(17)
    stw 15, 0xd4(17)
    stw 14, 0xd8(17)
    stw 12, 0xdc(17)
    stw 11, 0xe0(17)
    stw 10, 0xe4(17)
    stw 9, 0xe8(17)
    stw 8, 0xec(17)
    stw 7, 0xf0(17)
    stw 6, 0xf4(17)
    stw 5, 0xf8(17)
    stw 4, 0xfc(17)
    stw 3, 0x100(17)
    stw 30, 0x108(17)
    stw 0, 0x158(17)
    lwz 29, 0x1c0(16)
    lwz 0, 0x1b8(16)
    stw 29, 0xf4(1)
    lwz 29, 0x1c4(16)
    stw 0, 0x1b8(17)
    lwz 0, 0xf4(1)
    stw 29, 0x94(1)
    lwz 29, 0x1c8(16)
    stw 0, 0x1c0(17)
    lwz 0, 0x94(1)
    stw 29, 0x98(1)
    lwz 29, 0x1cc(16)
    stw 0, 0x1c4(17)
    lwz 0, 0x98(1)
    stw 29, 0x9c(1)
    lwz 29, 0x1d0(16)
    stw 0, 0x1c8(17)
    lwz 0, 0x9c(1)
    stw 29, 0xa0(1)
    lwz 29, 0x1d4(16)
    stw 0, 0x1cc(17)
    lwz 0, 0xa0(1)
    stw 29, 0xa4(1)
    lwz 29, 0x1d8(16)
    stw 0, 0x1d0(17)
    lwz 0, 0xa4(1)
    stw 29, 0xa8(1)
    lwz 29, 0x1dc(16)
    stw 0, 0x1d4(17)
    lwz 0, 0xa8(1)
    stw 29, 0xac(1)
    lwz 29, 0x1e0(16)
    stw 0, 0x1d8(17)
    lwz 0, 0xac(1)
    stw 29, 0xb0(1)
    lwz 29, 0x1e4(16)
    stw 0, 0x1dc(17)
    lwz 0, 0xb0(1)
    stw 29, 0xb4(1)
    lwz 29, 0x1e8(16)
    stw 0, 0x1e0(17)
    lwz 0, 0xb4(1)
    stw 29, 0xb8(1)
    lwz 29, 0x1ec(16)
    stw 0, 0x1e4(17)
    lwz 0, 0xb8(1)
    stw 29, 0xbc(1)
    lwz 29, 0x1f0(16)
    stw 0, 0x1e8(17)
    lwz 0, 0xbc(1)
    stw 29, 0xc0(1)
    lwz 29, 0x1f4(16)
    stw 0, 0x1ec(17)
    lwz 0, 0xc0(1)
    stw 29, 0xc4(1)
    lwz 29, 0x1f8(16)
    stw 0, 0x1f0(17)
    lwz 0, 0xc4(1)
    stw 29, 0xc8(1)
    lwz 29, 0x1fc(16)
    stw 0, 0x1f4(17)
    lwz 0, 0xc8(1)
    stw 29, 0xcc(1)
    lwz 29, 0x200(16)
    stw 0, 0x1f8(17)
    lwz 0, 0xcc(1)
    stw 29, 0xd0(1)
    lwz 29, 0x204(16)
    stw 0, 0x1fc(17)
    lwz 0, 0xd0(1)
    stw 29, 0xd4(1)
    lwz 29, 0x208(16)
    stw 0, 0x200(17)
    lwz 0, 0xd4(1)
    stw 29, 0xd8(1)
    lwz 29, 0x20c(16)
    stw 0, 0x204(17)
    lwz 0, 0xd8(1)
    lwz 28, 0x15c(16)
    lwz 27, 0x160(16)
    lwz 26, 0x164(16)
    lwz 25, 0x168(16)
    lwz 24, 0x16c(16)
    lwz 23, 0x170(16)
    lwz 22, 0x174(16)
    lwz 21, 0x178(16)
    lwz 20, 0x17c(16)
    lwz 19, 0x180(16)
    lwz 18, 0x184(16)
    lwz 15, 0x188(16)
    lwz 14, 0x18c(16)
    lwz 12, 0x190(16)
    lwz 11, 0x194(16)
    lwz 10, 0x198(16)
    lwz 9, 0x19c(16)
    lwz 8, 0x1a0(16)
    lwz 7, 0x1a4(16)
    lwz 6, 0x1a8(16)
    lwz 5, 0x1ac(16)
    lwz 4, 0x1b0(16)
    lwz 3, 0x1b4(16)
    lwz 30, 0x1bc(16)
    stw 0, 0x208(17)
    mr 0, 29
    stw 29, 0xdc(1)
    stw 28, 0x15c(17)
    stw 27, 0x160(17)
    stw 26, 0x164(17)
    stw 25, 0x168(17)
    stw 24, 0x16c(17)
    stw 23, 0x170(17)
    stw 22, 0x174(17)
    stw 21, 0x178(17)
    stw 20, 0x17c(17)
    stw 19, 0x180(17)
    stw 18, 0x184(17)
    stw 15, 0x188(17)
    stw 14, 0x18c(17)
    stw 12, 0x190(17)
    stw 11, 0x194(17)
    stw 10, 0x198(17)
    stw 9, 0x19c(17)
    stw 8, 0x1a0(17)
    stw 7, 0x1a4(17)
    stw 6, 0x1a8(17)
    stw 5, 0x1ac(17)
    stw 4, 0x1b0(17)
    stw 3, 0x1b4(17)
    stw 30, 0x1bc(17)
    stw 0, 0x20c(17)
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    lwz 15, 0x274(16)
    extsb. 0, 0
    lwz 0, 0x26c(16)
    stw 15, 0xf8(1)
    lwz 15, 0x278(16)
    stw 0, 0x26c(17)
    lwz 0, 0xf8(1)
    stw 15, 0xe0(1)
    lwz 15, 0x27c(16)
    stw 0, 0x274(17)
    lwz 0, 0xe0(1)
    stw 15, 0xe4(1)
    lwz 15, 0x280(16)
    stw 0, 0x278(17)
    lwz 0, 0xe4(1)
    stw 15, 0xe8(1)
    lwz 18, 0x210(16)
    lwz 19, 0x214(16)
    lwz 20, 0x218(16)
    lwz 21, 0x21c(16)
    lwz 22, 0x220(16)
    lwz 23, 0x224(16)
    lwz 24, 0x228(16)
    lwz 25, 0x22c(16)
    lwz 26, 0x230(16)
    lwz 27, 0x234(16)
    lwz 28, 0x238(16)
    lwz 29, 0x23c(16)
    lwz 30, 0x240(16)
    lwz 12, 0x244(16)
    lwz 11, 0x248(16)
    lwz 10, 0x24c(16)
    lwz 9, 0x250(16)
    lwz 8, 0x254(16)
    lwz 7, 0x258(16)
    lwz 6, 0x25c(16)
    lwz 5, 0x260(16)
    lwz 4, 0x264(16)
    lwz 3, 0x268(16)
    lwz 14, 0x270(16)
    lwz 15, 0x284(16)
    stw 0, 0x27c(17)
    lwz 0, 0xe8(1)
    stw 18, 0x210(17)
    stw 19, 0x214(17)
    stw 20, 0x218(17)
    stw 21, 0x21c(17)
    stw 22, 0x220(17)
    stw 23, 0x224(17)
    stw 24, 0x228(17)
    stw 25, 0x22c(17)
    stw 26, 0x230(17)
    stw 27, 0x234(17)
    stw 28, 0x238(17)
    stw 29, 0x23c(17)
    stw 30, 0x240(17)
    stw 12, 0x244(17)
    stw 11, 0x248(17)
    stw 10, 0x24c(17)
    stw 9, 0x250(17)
    stw 8, 0x254(17)
    stw 7, 0x258(17)
    stw 6, 0x25c(17)
    stw 5, 0x260(17)
    stw 4, 0x264(17)
    stw 3, 0x268(17)
    stw 14, 0x270(17)
    stw 0, 0x280(17)
    stw 15, 0x284(17)
    .4byte 0x40820030 # bne .L_8037D5B0
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_8037D5B0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037D5E8
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_8037D5E8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037D620
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8037D620:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037D658
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8037D658:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037D690
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8037D690:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037D6C8
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8037D6C8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037D700
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8037D700:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037D738
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8037D738:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8037D770
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8037D770:
    lmw 14, 0x108(1)
    lwz 0, 0x154(1)
    mtlr 0
    addi 1, 1, 0x150
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8037CE5C

