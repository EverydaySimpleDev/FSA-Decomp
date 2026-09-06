/*
 * fn_801005C4(this): the class's Init()/Start() method. Resets this->0x230
 * (state) and this->0x248 (step counter) to 0, this->0x240 (handle) to -1
 * (the confirmed "no handle yet" sentinel), this->0x234/0x236 to 0,
 * this->0x235 (facing index, see fn_800FF6F8) to 2 (a default direction),
 * this->0x260 to 0x258 (600), and two float-pair bounds at this->0x60/0x64
 * and this->0x68/0x6c from constants lbl_8053C134/lbl_8053C138. Extracts a
 * 5-bit field from this->0x90 into this->0x239 (likely a player/controller
 * index, matching this->0x239's use as a random-seed-ish byte in
 * fn_800FF0C0). Then makes a REAL virtual call through this->vtable[0x34/4
 * =slot 13] and branches on its boolean return: success -> state 0 (normal
 * start), failure -> state 8 (the same error state fn_800FF6F8 also lands
 * on from its own handle-validation failures).
 */

.section extab, "a"
.balign 4
.global etb_800058C8
etb_800058C8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800058C8, 8

.section extabindex, "a"
.balign 4
.global eti_80011C5C
eti_80011C5C:
    .4byte fn_801005C4
    .4byte 0x000000B4
    .4byte etb_800058C8
.size eti_80011C5C, 12

.text
.balign 4
.global fn_801005C4

fn_801005C4:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0229194 # lfs f1, lbl_8053C134@sda21(r0)
    li 6, 0x2
    stw 0, 0x14(1)
    li 5, 0x0
    .4byte 0xC0029198 # lfs f0, lbl_8053C138@sda21(r0)
    li 4, -0x1
    stw 31, 0xc(1)
    li 0, 0x258
    mr 31, 3
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stb 6, 0x235(3)
    stw 5, 0x23c(3)
    stb 5, 0x234(3)
    stw 4, 0x240(3)
    stb 5, 0x236(3)
    lwz 4, 0x90(3)
    extrwi 4, 4, 5, 5
    stb 4, 0x239(3)
    stw 5, 0x230(3)
    stw 5, 0x248(3)
    stw 0, 0x260(3)
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80100658
    li 3, 0x8
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x248(31)
    .4byte 0x48000010 # b .L_80100664
L_80100658:
    li 0, 0x0
    stw 0, 0x230(31)
    stw 0, 0x248(31)
L_80100664:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

