/*
 * fn_801DB18C(this) (0x801DB18C-0x801DB2C8, 0x13C/316 bytes) - builds a
 * 16-byte sequential index buffer (0..15, the CONFIRMED "every slot in
 * order" convention from fn_800FD894) plus a large local spawn-parameter
 * struct byte-for-byte identical in shape to the ones fn_801D3DAC/
 * fn_801D41B8/fn_801D4C70 build for the CONFIRMED fn_801F06F0 spawn-effect
 * dispatcher - but here passed to `fn_801F02BC` instead (this, anchor table
 * `lbl_80469AA4`, this->0x280+0xe3 [a per-type spawn-code index, same
 * convention as fn_801D3DAC's this->0x280+0xd5], angle constant, the index
 * buffer, count=-1/0/0). `fn_801F02BC` is a sibling of the confirmed
 * fn_801F06F0/fn_801F9484 spawn family, not yet directly landed. Caller not
 * yet traced.
 */

.section extab, "a"
.balign 4
.global etb_80008800
etb_80008800:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008800, 8

.section extabindex, "a"
.balign 4
.global eti_80015C34
eti_80015C34:
    .4byte fn_801DB18C
    .4byte 0x0000013C
    .4byte etb_80008800
.size eti_80015C34, 12

.text
.balign 4
.global fn_801DB18C

fn_801DB18C:
    stwu 1, -0x50(1)
    mflr 0
    li 11, 0x0
    stw 0, 0x54(1)
    li 0, -0x1
    addi 10, 1, 0x8
    stw 0, 0x18(1)
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_801DB210
L_801DB1B0:
    clrlwi 0, 11, 24
    addi 8, 11, 0x5
    addi 6, 11, 0x1
    stbx 11, 10, 0
    clrlwi 0, 6, 24
    addi 4, 11, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 11, 0x3
    addi 9, 11, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 11, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 11, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 11, 11, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_801DB210:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801DB1B0
    li 11, 0x0
    li 10, 0x1
    stb 11, 0x24(1)
    li 12, -0x1
    li 5, 0x3
    li 0, 0x2
    stb 11, 0x25(1)
    lis 4, lbl_80469AA4@ha
    .4byte 0xC022C340 # lfs f1, lbl_8053F2E0@sda21(r0)
    addi 4, 4, lbl_80469AA4@l
    stw 12, 0x18(1)
    addi 6, 1, 0x8
    fmr 2, 1
    li 7, -0x1
    stw 11, 0x1c(1)
    li 8, 0x0
    li 9, 0x0
    stw 11, 0x20(1)
    stb 11, 0x26(1)
    stb 10, 0x27(1)
    stb 10, 0x28(1)
    stb 11, 0x29(1)
    stb 11, 0x2a(1)
    stb 11, 0x2b(1)
    stb 11, 0x2c(1)
    stb 11, 0x2d(1)
    stb 10, 0x2e(1)
    stw 5, 0x30(1)
    stb 10, 0x34(1)
    stb 11, 0x35(1)
    stb 11, 0x36(1)
    stw 12, 0x38(1)
    stw 11, 0x3c(1)
    stw 0, 0x40(1)
    stb 10, 0x24(1)
    stb 11, 0x25(1)
    lwz 5, 0x280(3)
    addi 5, 5, 0xe3
    bl fn_801F02BC
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

