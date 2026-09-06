.section extab, "a"
.balign 4
.global etb_8000A47C
etb_8000A47C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000A47C, 8

.section extabindex, "a"
.balign 4
.global eti_800181E4
eti_800181E4:
    .4byte fn_8021D7A8
    .4byte 0x00000190
    .4byte etb_8000A47C
.size eti_800181E4, 12

.text
.balign 4
.global fn_8021D7A8

# fn_8021D7A8(this) - NAVI's real draw(). Early-returns when draw mode
# (this->0x248) is exactly 3, OR when this->0x2b8 (a scale/alpha-like
# field) is at or below a threshold constant - a visibility gate
# similar in shape to ZORA's "too small/close to render" check.
# Builds the standard shared material struct, converting this->0x2b8
# to a fixed-point alpha byte and setting a blend flag specially when
# draw mode==9. Selects a model index from one of two lookup tables
# (`lbl_8046A7C0` keyed by this->0x2ac<<2, the SAME "color/variant"
# index from setParams) plus this->0x280, and draws via the CONFIRMED
# 4th render-primitive family member (fn_801F02BC, transform-matrix
# wrapper) using scale constant lbl_8053FD5C.
fn_8021D7A8:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x3
    .4byte 0x4182016C # beq .L_8021D928
    lfs 1, 0x2b8(3)
    .4byte 0xC002CDB8 # lfs f0, lbl_8053FD58@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081015C # ble .L_8021D928
    li 0, -0x1
    addi 10, 1, 0x8
    stw 0, 0x18(1)
    li 11, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_8021D848
L_8021D7E8:
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
L_8021D848:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8021D7E8
    li 7, 0x0
    li 5, 0x1
    li 6, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 6, 0x18(1)
    stw 7, 0x1c(1)
    stw 7, 0x20(1)
    stb 7, 0x24(1)
    stb 7, 0x25(1)
    stb 7, 0x26(1)
    stb 5, 0x27(1)
    stb 5, 0x28(1)
    stb 7, 0x29(1)
    stb 7, 0x2a(1)
    stb 7, 0x2b(1)
    stb 7, 0x2c(1)
    stb 7, 0x2d(1)
    stb 5, 0x2e(1)
    stw 4, 0x30(1)
    stb 5, 0x34(1)
    stb 7, 0x35(1)
    stb 7, 0x36(1)
    stw 6, 0x38(1)
    stw 7, 0x3c(1)
    stw 0, 0x40(1)
    lfs 0, 0x2b8(3)
    fctiwz 0, 0
    stfd 0, 0x48(1)
    lwz 0, 0x4c(1)
    stb 0, 0x1b(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x9
    .4byte 0x41820008 # beq .L_8021D8E0
    .4byte 0x48000008 # b .L_8021D8E4
L_8021D8E0:
    mr 7, 5
L_8021D8E4:
    stb 7, 0x28(1)
    lis 5, lbl_8046A7C0@ha
    .4byte 0xC022CDBC # lfs f1, lbl_8053FD5C@sda21(r0)
    lis 4, lbl_8046A7D8@ha
    lbz 0, 0x2ac(3)
    addi 5, 5, lbl_8046A7C0@l
    fmr 2, 1
    addi 4, 4, lbl_8046A7D8@l
    slwi 6, 0, 2
    lwz 0, 0x280(3)
    lwzx 5, 5, 6
    addi 6, 1, 0x8
    add 5, 5, 0
    li 7, 0x407
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
L_8021D928:
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

