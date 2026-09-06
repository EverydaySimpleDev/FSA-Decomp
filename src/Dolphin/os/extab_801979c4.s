# Unnamed actor cluster, part 4/9 (Track A byte-match + overview -
# 0x4EC=1260B). update() state handler #2 - uses the global PRNG
# advance (fn_80093340), the confirmed effect-spawn/sync pair
# fn_8013CB44/fn_8013CC50, fn_801F0E34 (settings-gated event), the
# confirmed generic FourCC actor dispatcher fn_801F9484 (spawns a
# companion/projectile), fn_801F666C/SpatialRegistry_GetBase/fn_801F71A4.
.section extab, "a"
.balign 4
.global etb_80007864
etb_80007864:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_80007864, 8

.section extabindex, "a"
.balign 4
.global eti_80014614
eti_80014614:
    .4byte fn_801979C4
    .4byte 0x000004EC
    .4byte etb_80007864
.size eti_80014614, 12

.text
.balign 4
.global fn_801979C4

fn_801979C4:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 31, 3
    li 29, 0x0
    mr 30, 31
L_801979F8:
    lwz 3, 0x304(30)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x4
    li 7, 0x1
    bl fn_8013CB44
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0xd
    .4byte 0x4180FFDC # blt .L_801979F8
    lwz 3, 0x254(31)
    addi 0, 3, 0x1
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x5
    .4byte 0x4081000C # ble .L_80197A40
    li 0, 0x0
    stw 0, 0x254(31)
L_80197A40:
    lwz 0, 0x230(31)
    cmpwi 0, 0x4c
    .4byte 0x41820078 # beq .L_80197AC0
    .4byte 0x40800014 # bge .L_80197A60
    cmpwi 0, 0x4a
    .4byte 0x4182001C # beq .L_80197A70
    .4byte 0x40800028 # bge .L_80197A80
    .4byte 0x48000428 # b .L_80197E84
L_80197A60:
    cmpwi 0, 0x4e
    .4byte 0x41820318 # beq .L_80197D7C
    .4byte 0x4080041C # bge .L_80197E84
    .4byte 0x4800024C # b .L_80197CB8
L_80197A70:
    .4byte 0xC002B3EC # lfs f0, lbl_8053E38C@sda21(r0)
    li 0, 0x4a
    stfs 0, 0x26c(31)
    stw 0, 0x230(31)
L_80197A80:
    lfs 2, 0x26c(31)
    lfs 1, 0x14(31)
    .4byte 0xC002B3D0 # lfs f0, lbl_8053E370@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x408003E8 # bge .L_80197E84
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x9
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x4c
    stw 0, 0x230(31)
    .4byte 0x480003C8 # b .L_80197E84
L_80197AC0:
    lhz 0, 0x94(31)
    lis 5, lbl_804A2880@ha
    lis 4, lbl_8052EBC0@ha
    lis 3, lbl_80534C00@ha
    slwi 0, 0, 1
    addi 5, 5, lbl_804A2880@l
    lhzx 0, 5, 0
    addi 4, 4, lbl_8052EBC0@l
    addi 30, 4, 0x4
    lfs 31, 0x280(31)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC062B400 # lfs f3, lbl_8053E3A0@sda21(r0)
    lfsx 1, 4, 0
    addi 3, 3, lbl_80534C00@l
    lfs 30, 0x284(31)
    lfsx 0, 30, 0
    fmadds 31, 3, 1, 31
    lfs 1, 0x10(31)
    fmadds 30, 3, 0, 30
    lfs 0, 0x14(31)
    lfs 2, 0xc(31)
    fsubs 0, 1, 0
    fsubs 31, 31, 2
    fsubs 30, 30, 0
    fmr 1, 31
    fmr 2, 30
    bl fn_80093340
    .4byte 0xC002B404 # lfs f0, lbl_8053E3A4@sda21(r0)
    lis 4, lbl_8052EBC0@ha
    lis 3, lbl_80534C00@ha
    .4byte 0xC062B408 # lfs f3, lbl_8053E3A8@sda21(r0)
    fmuls 0, 1, 0
    addi 4, 4, lbl_8052EBC0@l
    fmr 1, 31
    addi 3, 3, lbl_80534C00@l
    fmr 2, 30
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    fmuls 0, 3, 0
    stfs 0, 0x274(31)
    bl fn_80093340
    .4byte 0xC002B404 # lfs f0, lbl_8053E3A4@sda21(r0)
    fmuls 2, 30, 30
    .4byte 0xC062B408 # lfs f3, lbl_8053E3A8@sda21(r0)
    fmuls 1, 1, 0
    .4byte 0xC002B3E8 # lfs f0, lbl_8053E388@sda21(r0)
    fmadds 4, 31, 31, 2
    fctiwz 1, 1
    fcmpo cr0, 4, 0
    stfd 1, 0x18(1)
    lwz 0, 0x1c(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 30, 0
    fmuls 0, 3, 0
    stfs 0, 0x278(31)
    .4byte 0x4081004C # ble .L_80197BF4
    frsqrte 1, 4
    .4byte 0xC862B410 # lfd f3, lbl_8053E3B0@sda21(r0)
    .4byte 0xC842B418 # lfd f2, lbl_8053E3B8@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_80197C78
L_80197BF4:
    .4byte 0xC802B420 # lfd f0, lbl_8053E3C0@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80197C0C
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_80197C78
L_80197C0C:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 4, 0x8(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80197C34
    .4byte 0x40800040 # bge .L_80197C64
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80197C4C
    .4byte 0x48000034 # b .L_80197C64
L_80197C34:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80197C44
    li 0, 0x1
    .4byte 0x48000028 # b .L_80197C68
L_80197C44:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80197C68
L_80197C4C:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80197C5C
    li 0, 0x5
    .4byte 0x48000010 # b .L_80197C68
L_80197C5C:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80197C68
L_80197C64:
    li 0, 0x4
L_80197C68:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80197C78
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_80197C78:
    .4byte 0xC002B408 # lfs f0, lbl_8053E3A8@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800204 # bge .L_80197E84
    .4byte 0x806D8FE0 # lwz r3, lbl_8053ABA0@sda21(r0)
    li 0, 0x4d
    .4byte 0xC002B3E8 # lfs f0, lbl_8053E388@sda21(r0)
    addi 3, 3, 0x1
    .4byte 0x906D8FE0 # stw r3, lbl_8053ABA0@sda21(r0)
    stw 0, 0x230(31)
    stfs 0, 0x27c(31)
    stfs 0, 0x278(31)
    stfs 0, 0x274(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    .4byte 0x480001D0 # b .L_80197E84
L_80197CB8:
    .4byte 0x800D8FE4 # lwz r0, lbl_8053ABA4@sda21(r0)
    cmpwi 0, 0x1
    .4byte 0x408201C4 # bne .L_80197E84
    lhz 0, 0x94(31)
    lis 3, lbl_804A28D8@ha
    addi 5, 3, lbl_804A28D8@l
    lwz 3, 0x4(31)
    mulli 0, 0, 0x3
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    addi 4, 31, 0xc
    li 6, 0x0
    slwi 30, 0, 1
    li 7, 0x5
    lhzx 5, 5, 30
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, lbl_804A28D8@ha
    lwz 3, 0x4(31)
    addi 0, 4, lbl_804A28D8@l
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    add 5, 0, 30
    addi 4, 31, 0xc
    lhz 5, 0x2(5)
    li 6, 0x0
    li 7, 0x5
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, lbl_804A28D8@ha
    lwz 3, 0x4(31)
    addi 0, 4, lbl_804A28D8@l
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    add 5, 0, 30
    addi 4, 31, 0xc
    lhz 5, 0x4(5)
    li 6, 0x0
    li 7, 0x5
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 3, 0x0
    li 0, 0x4e
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x4800010C # b .L_80197E84
L_80197D7C:
    lwz 6, 0x248(31)
    lis 4, 0x5
    mr 3, 31
    li 5, 0x0
    addi 0, 6, 0x1
    addi 4, 4, 0xb
    stw 0, 0x248(31)
    bl fn_801F0E34
    .4byte 0xC022B3E8 # lfs f1, lbl_8053E388@sda21(r0)
    addi 3, 31, 0x270
    .4byte 0xC042B3D4 # lfs f2, lbl_8053E374@sda21(r0)
    .4byte 0xC062B3E4 # lfs f3, lbl_8053E384@sda21(r0)
    bl fn_801F71A4
    lwz 0, 0x248(31)
    cmpwi 0, 0x3c
    .4byte 0x40820058 # bne .L_80197E10
    li 4, 0x1
    stw 4, 0x24c(31)
    lwz 5, 0x304(31)
    cmplwi 5, 0x0
    .4byte 0x4182001C # beq .L_80197DE8
    lwz 3, 0xf4(5)
    li 0, 0x0
    ori 3, 3, 0x1
    stw 3, 0xf4(5)
    stw 4, 0x24(5)
    stw 0, 0x304(31)
L_80197DE8:
    lwz 5, 0x308(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80197E10
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x308(31)
L_80197E10:
    lwz 0, 0x248(31)
    cmpwi 0, 0x14a
    .4byte 0x4082006C # bne .L_80197E84
    bl SpatialRegistry_GetBase
    lhz 0, 0x94(31)
    lis 4, 0x5a4c
    lwz 5, 0x4(31)
    addi 4, 4, 0x4432
    slwi 0, 0, 4
    addi 6, 31, 0xc
    ori 7, 0, 0x3
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 30, 3
    .4byte 0x41800030 # blt .L_80197E7C
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80197E7C
    lfs 0, 0x280(31)
    stfs 0, 0x280(3)
    lfs 0, 0x284(31)
    stfs 0, 0x284(3)
    lfs 0, 0x288(31)
    stfs 0, 0x288(3)
L_80197E7C:
    li 0, 0x0
    stb 0, 0x11c(31)
L_80197E84:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 0, 0x54(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

