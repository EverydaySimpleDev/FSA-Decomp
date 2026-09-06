# fn_800F9F54: ANOTHER method of the rupee-container class (not a new
# class) - reuses `this->0x238` exactly as earlier container methods
# do (fn_800F8A30 resets it, this function reads 2 of its bits), and
# builds the SAME 16-byte identity-index array + effect-descriptor
# stack block, byte-for-byte, as `fn_800F8548`'s already-documented
# effect helper. Uses a previously-unexplored field range
# `this->0x268/0x26c/0x270/0x274/0x278` (anchor-table index, 2 offset
# floats, and an effect-variant index respectively) to compute a
# scaled position offset via the shared anchor table `lbl_8052EBC0`,
# then selects an override ID (`0xd` or `0x11`) based on 2 flag bits
# of `this->0x238` before finally looking up an effect ID from a NEW
# per-variant table `lbl_8049C5D0` (indexed by `this->0x278*4`) via
# `fn_804032E8` and playing it through the CONFIRMED `fn_801EFD34`.
# **Correction of a likely earlier misreading**: the constant
# `0x57415254` passed as `fn_804032E8`'s first argument (also seen
# verbatim in `fn_800F8548`) decodes as ASCII "WART", not a spawn
# code - since `fn_804032E8` only ever READS from the big
# `lbl_80529DEC` singleton and never spawns anything, this is more
# plausibly a fixed type/namespace tag argument to that generic
# accessor API, not a 4-letter actor dispatch code. Needs `-mgekko`.
.section extab, "a"
.balign 4
.global etb_800057B0
etb_800057B0:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_800057B0, 8

.section extabindex, "a"
.balign 4
.global eti_80011AB8
eti_80011AB8:
    .4byte fn_800F9F54
    .4byte 0x00000250
    .4byte etb_800057B0
.size eti_80011AB8, 12

.text
.balign 4
.global fn_800F9F54

fn_800F9F54:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stw 31, 0x9c(1)
    mr 31, 3
    lis 3, lbl_8052EBC0@ha
    lwz 4, 0x268(31)
    li 0, -0x1
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0229024 # lfs f1, lbl_8053BFC4@sda21(r0)
    rlwinm 4, 4, 30, 18, 28
    .4byte 0xC0029098 # lfs f0, lbl_8053C038@sda21(r0)
    lfsx 2, 3, 4
    addi 9, 1, 0x38
    stw 0, 0x48(1)
    li 10, 0x0
    fmuls 5, 1, 2
    fmuls 31, 0, 2
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_800FA00C
L_800F9FAC:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_800FA00C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_800F9FAC
    .4byte 0xC042900C # lfs f2, lbl_8053BFAC@sda21(r0)
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 3, 0x2
    stw 7, 0x48(1)
    addi 0, 1, 0x8
    .4byte 0xC022909C # lfs f1, lbl_8053C03C@sda21(r0)
    stw 6, 0x4c(1)
    stw 6, 0x50(1)
    stb 6, 0x54(1)
    stb 6, 0x55(1)
    stb 6, 0x56(1)
    stb 5, 0x57(1)
    stb 5, 0x58(1)
    stb 6, 0x59(1)
    stb 6, 0x5a(1)
    stb 6, 0x5b(1)
    stb 6, 0x5c(1)
    stb 6, 0x5d(1)
    stb 5, 0x5e(1)
    stw 4, 0x60(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stw 7, 0x68(1)
    stw 6, 0x6c(1)
    stw 3, 0x70(1)
    stfs 2, 0x14(1)
    stfs 2, 0x24(1)
    stfs 2, 0x34(1)
    lfs 4, 0x26c(31)
    fadds 3, 4, 31
    stfs 2, 0xc(1)
    fadds 0, 4, 5
    stfs 2, 0x10(1)
    stfs 0, 0x8(1)
    stfs 2, 0x18(1)
    stfs 4, 0x1c(1)
    stfs 2, 0x20(1)
    stfs 2, 0x28(1)
    stfs 2, 0x2c(1)
    stfs 3, 0x30(1)
    stw 0, 0x50(1)
    lfs 0, 0x274(31)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x78(1)
    stfd 0, 0x80(1)
    lwz 4, 0x7c(1)
    stfd 0, 0x88(1)
    lwz 3, 0x84(1)
    lwz 0, 0x8c(1)
    stb 4, 0x4c(1)
    stb 3, 0x4d(1)
    stb 0, 0x4e(1)
    lfs 0, 0x270(31)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x90(1)
    lwz 0, 0x94(1)
    stb 0, 0x4b(1)
    lwz 3, 0x238(31)
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x41820010 # beq .L_800FA12C
    li 0, 0xd
    stw 0, 0x68(1)
    .4byte 0x48000014 # b .L_800FA13C
L_800FA12C:
    rlwinm. 0, 3, 0, 29, 29
    .4byte 0x4182000C # beq .L_800FA13C
    li 0, 0x11
    stw 0, 0x68(1)
L_800FA13C:
    lbz 0, 0x278(31)
    lis 3, lbl_8049C5D0@ha
    lis 5, 0x5741
    slwi 0, 0, 2
    addi 3, 3, lbl_8049C5D0@l
    lwzx 4, 3, 0
    addi 3, 5, 0x5254
    bl fn_804032E8
    lfs 0, 0x26c(31)
    mr 4, 3
    .4byte 0xC022900C # lfs f1, lbl_8053BFAC@sda21(r0)
    mr 3, 31
    fadds 0, 0, 31
    .4byte 0xC04290A0 # lfs f2, lbl_8053C040@sda21(r0)
    fmr 3, 1
    addi 5, 1, 0x38
    li 6, 0x5
    fmuls 2, 2, 0
    bl fn_801EFD34
    psq_l 31, 0xa8(1), 0, 0
    lwz 0, 0xb4(1)
    lfd 31, 0xa0(1)
    lwz 31, 0x9c(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

