.section extab, "a"
.balign 4
.global etb_80009F40
etb_80009F40:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80009F40, 8

.section extabindex, "a"
.balign 4
.global eti_80017A28
eti_80017A28:
    .4byte fn_8020DB74
    .4byte 0x00000250
    .4byte etb_80009F40
.size eti_80017A28, 12

.text
.balign 4
.global fn_8020DB74

# fn_8020DB74(this) - FLOR's real draw(). Early-returns for draw mode
# 0/1/0xa; for the remaining modes, copies the current position
# (this->0xc/0x10/0x14) into a local buffer, and - SPECIFICALLY at
# mode 4 with this->0x24c>=60 - applies an alternating LEFT/RIGHT
# offset to the buffer's X coordinate based on a MOD-4 test of
# this->0x24c (a bit-trick mod computation): adds a constant
# (lbl_8053FA28) for 2 of every 4 "ticks", subtracts it for the other
# 2 - a genuine side-to-side SWAYING position oscillation (matching a
# floor/plant-like hazard that visually sways rather than moving
# under real physics).
#
# Builds the standard shared material struct, and - when flag bit 16
# of this->0x230 is CLEAR - ALSO builds a secondary "trail/wake"
# effect struct (mostly filled with a repeated constant
# lbl_8053FA2C plus lbl_8053FA28/FA30 values), the same convention
# seen in TINK's draw (project_fsa_tink_actor_progress.md).
#
# When not owned by a real player (this->0x4 < 8): fires a sound/
# effect via the resource manager's vtable slot 0x18 (the "PEFF"-
# family call) and draws via the CONFIRMED spatial-triad helper
# fn_802F86CC using the camera manager's ambient light-probe grid,
# passing BOTH the adjusted position buffer and the trail struct.
fn_8020DB74:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stw 31, 0x8c(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0xa
    .4byte 0x41820224 # beq .L_8020DDB0
    .4byte 0x40800014 # bge .L_8020DBA4
    cmpwi 0, 0x2
    .4byte 0x4080000C # bge .L_8020DBA4
    cmpwi 0, 0x0
    .4byte 0x40800210 # bge .L_8020DDB0
L_8020DBA4:
    psq_l 1, 0xc(3), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x4
    .4byte 0x40820050 # bne .L_8020DC0C
    lwz 4, 0x24c(3)
    cmpwi 4, 0x3c
    .4byte 0x41800044 # blt .L_8020DC0C
    slwi 0, 4, 30
    srwi 4, 4, 31
    subf 0, 4, 0
    rotlwi 0, 0, 2
    add 0, 0, 4
    cmpwi 0, 0x2
    .4byte 0x40800018 # bge .L_8020DBFC
    lfs 1, 0x8(1)
    .4byte 0xC002CA88 # lfs f0, lbl_8053FA28@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000014 # b .L_8020DC0C
L_8020DBFC:
    lfs 1, 0x8(1)
    .4byte 0xC002CA88 # lfs f0, lbl_8053FA28@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
L_8020DC0C:
    li 0, -0x1
    addi 10, 1, 0x44
    stw 0, 0x54(1)
    li 11, 0x0
    stw 0, 0x58(1)
    .4byte 0x48000064 # b .L_8020DC84
L_8020DC24:
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
L_8020DC84:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8020DC24
    li 6, 0x0
    li 5, 0x1
    stb 6, 0x60(1)
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stb 6, 0x61(1)
    stw 7, 0x54(1)
    stw 6, 0x58(1)
    stw 6, 0x5c(1)
    stb 6, 0x62(1)
    stb 5, 0x63(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stb 6, 0x67(1)
    stb 6, 0x68(1)
    stb 6, 0x69(1)
    stb 5, 0x6a(1)
    stw 4, 0x6c(1)
    stb 5, 0x70(1)
    stb 6, 0x71(1)
    stb 6, 0x72(1)
    stw 7, 0x74(1)
    stw 6, 0x78(1)
    stw 0, 0x7c(1)
    stb 6, 0x60(1)
    stb 6, 0x61(1)
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 16, 16
    .4byte 0x41820048 # beq .L_8020DD50
    .4byte 0xC042CA8C # lfs f2, lbl_8053FA2C@sda21(r0)
    addi 0, 1, 0x14
    .4byte 0xC002CA88 # lfs f0, lbl_8053FA28@sda21(r0)
    .4byte 0xC022CA90 # lfs f1, lbl_8053FA30@sda21(r0)
    stfs 2, 0x20(1)
    stfs 2, 0x30(1)
    stfs 2, 0x40(1)
    stfs 1, 0x14(1)
    stfs 2, 0x18(1)
    stfs 2, 0x1c(1)
    stfs 2, 0x24(1)
    stfs 0, 0x28(1)
    stfs 2, 0x2c(1)
    stfs 2, 0x34(1)
    stfs 2, 0x38(1)
    stfs 0, 0x3c(1)
    stw 0, 0x5c(1)
L_8020DD50:
    lwz 0, 0x4(3)
    lwz 3, 0x280(3)
    cmpwi 0, 0x8
    addi 31, 3, 0x321
    .4byte 0x40800050 # bge .L_8020DDB0
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046A430@ha
    addi 5, 3, lbl_8046A430@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022CA88 # lfs f1, lbl_8053FA28@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 31
    fmr 2, 1
    addi 7, 1, 0x44
    lwz 3, 0x20(4)
    addi 4, 1, 0x8
    bl fn_802F86CC
L_8020DDB0:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

