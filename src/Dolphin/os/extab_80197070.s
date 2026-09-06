# Unnamed actor (vtable lbl_804A2944, ctor fn_80201A14 - FourCC not
# resolved, see project_fsa_actor_cluster_80203xxx.md) cluster, part
# 1/9 (Track A byte-match + overview - 0x4E0=1248B). draw(). Uses the
# confirmed 3D render-primitive fn_801F06F0, an unfamiliar fn_801EF830,
# and the already-landed fn_801F02BC.
.section extab, "a"
.balign 4
.global etb_8000784C
etb_8000784C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000784C, 8

.section extabindex, "a"
.balign 4
.global eti_800145F0
eti_800145F0:
    .4byte fn_80197070
    .4byte 0x000004E0
    .4byte etb_8000784C
.size eti_800145F0, 12

.text
.balign 4
.global fn_80197070

fn_80197070:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stw 31, 0xdc(1)
    stw 30, 0xd8(1)
    mr 30, 3
    lis 3, lbl_80468428@ha
    stw 29, 0xd4(1)
    addi 31, 3, lbl_80468428@l
    stw 28, 0xd0(1)
    lwz 0, 0x90(30)
    cmpwi 0, 0x2
    .4byte 0x41820174 # beq .L_80197214
    .4byte 0x40800010 # bge .L_801970B4
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_801970C0
    .4byte 0x48000480 # b .L_80197530
L_801970B4:
    cmpwi 0, 0x4
    .4byte 0x40800478 # bge .L_80197530
    .4byte 0x480002F4 # b .L_801973B0
L_801970C0:
    li 0, -0x1
    addi 9, 1, 0x80
    stw 0, 0x90(1)
    li 10, 0x0
    stw 0, 0x94(1)
    .4byte 0x48000064 # b .L_80197138
L_801970D8:
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
L_80197138:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801970D8
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x90(1)
    li 8, 0x9b
    li 7, 0x7
    stw 5, 0x94(1)
    stw 5, 0x98(1)
    stb 5, 0x9c(1)
    stb 5, 0x9d(1)
    stb 5, 0x9e(1)
    stb 4, 0x9f(1)
    stb 4, 0xa0(1)
    stb 5, 0xa1(1)
    stb 5, 0xa2(1)
    stb 5, 0xa3(1)
    stb 5, 0xa4(1)
    stb 5, 0xa5(1)
    stb 4, 0xa6(1)
    stw 3, 0xa8(1)
    stb 4, 0xac(1)
    stb 5, 0xad(1)
    stb 5, 0xae(1)
    stw 6, 0xb0(1)
    stw 5, 0xb4(1)
    stw 0, 0xb8(1)
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_801971C8
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x4182036C # beq .L_80197530
L_801971C8:
    li 0, 0x0
    stb 0, 0x9f(1)
    lbz 0, 0x268(30)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_801971E0
    li 8, 0x274
L_801971E0:
    lwz 0, 0x230(30)
    cmpwi 0, 0x15
    .4byte 0x40820008 # bne .L_801971F0
    li 7, -0x1
L_801971F0:
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    mr 3, 30
    lwz 0, 0x254(30)
    addi 4, 31, 0x30
    fmr 2, 1
    addi 6, 1, 0x80
    add 5, 8, 0
    bl fn_801F06F0
    .4byte 0x48000320 # b .L_80197530
L_80197214:
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x40820314 # bne .L_80197530
    li 0, -0x1
    addi 9, 1, 0x44
    stw 0, 0x54(1)
    li 10, 0x0
    stw 0, 0x58(1)
    .4byte 0x48000064 # b .L_80197298
L_80197238:
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
L_80197298:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80197238
    li 28, 0x0
    li 3, -0x1
    stb 28, 0x61(1)
    li 29, 0x1
    li 12, 0x3
    li 11, 0x2
    li 10, 0x5
    stw 3, 0x74(1)
    li 0, 0x11
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    stw 3, 0x54(1)
    addi 5, 31, 0x0
    fmr 2, 1
    mr 3, 30
    stw 28, 0x58(1)
    addi 4, 31, 0x30
    addi 6, 1, 0x44
    li 7, -0x1
    stw 28, 0x5c(1)
    li 8, 0x0
    li 9, 0x0
    stb 28, 0x60(1)
    stb 28, 0x62(1)
    stb 29, 0x63(1)
    stb 29, 0x64(1)
    stb 28, 0x65(1)
    stb 28, 0x66(1)
    stb 28, 0x67(1)
    stb 28, 0x68(1)
    stb 28, 0x69(1)
    stb 29, 0x6a(1)
    stw 12, 0x6c(1)
    stb 29, 0x70(1)
    stb 28, 0x71(1)
    stb 28, 0x72(1)
    stw 28, 0x78(1)
    stw 11, 0x7c(1)
    stb 10, 0x61(1)
    stw 0, 0x74(1)
    lhz 0, 0x94(30)
    lwz 10, 0x254(30)
    slwi 0, 0, 2
    lwzx 0, 5, 0
    add 5, 10, 0
    bl fn_801F02BC
    lfs 0, 0x270(30)
    addi 3, 31, 0x0
    fctiwz 0, 0
    stfd 0, 0xc0(1)
    lwz 0, 0xc4(1)
    stb 0, 0x57(1)
    lhz 4, 0x94(30)
    lwz 0, 0x138(30)
    slwi 4, 4, 2
    lwz 5, 0x254(30)
    lwzx 3, 3, 4
    cmplwi 0, 0x0
    add 8, 5, 3
    .4byte 0x408201A4 # bne .L_80197530
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    addi 5, 1, 0x44
    addi 7, 31, 0x30
    li 6, 0x407
    li 9, 0x0
    bl fn_801EF830
    .4byte 0x48000184 # b .L_80197530
L_801973B0:
    li 0, -0x1
    addi 9, 1, 0x8
    stw 0, 0x18(1)
    li 10, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_80197428
L_801973C8:
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
L_80197428:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801973C8
    li 11, 0x0
    li 10, 0x1
    stb 10, 0x27(1)
    li 12, -0x1
    li 9, 0x3
    li 8, 0x2
    stb 11, 0x25(1)
    li 0, 0x5
    .4byte 0xC022B3D0 # lfs f1, lbl_8053E370@sda21(r0)
    addi 5, 31, 0x18
    stw 12, 0x18(1)
    mr 3, 30
    fmr 2, 1
    addi 4, 31, 0x44
    stw 11, 0x1c(1)
    addi 6, 1, 0x8
    li 7, -0x1
    stw 11, 0x20(1)
    stb 11, 0x24(1)
    stb 11, 0x26(1)
    stb 10, 0x28(1)
    stb 11, 0x29(1)
    stb 11, 0x2a(1)
    stb 11, 0x2b(1)
    stb 11, 0x2c(1)
    stb 11, 0x2d(1)
    stb 10, 0x2e(1)
    stw 9, 0x30(1)
    stb 10, 0x34(1)
    stb 11, 0x35(1)
    stb 11, 0x36(1)
    stw 12, 0x38(1)
    stw 11, 0x3c(1)
    stw 8, 0x40(1)
    stb 11, 0x27(1)
    stb 0, 0x25(1)
    lhz 0, 0x94(30)
    lwz 8, 0x254(30)
    slwi 0, 0, 2
    lwzx 0, 5, 0
    add 5, 8, 0
    bl fn_801F06F0
    lfs 0, 0x270(30)
    addi 3, 31, 0x18
    fctiwz 0, 0
    stfd 0, 0xc0(1)
    lwz 0, 0xc4(1)
    stb 0, 0x1b(1)
    lhz 4, 0x94(30)
    lwz 0, 0x138(30)
    slwi 4, 4, 2
    lwz 5, 0x254(30)
    lwzx 3, 3, 4
    cmplwi 0, 0x0
    add 8, 5, 3
    .4byte 0x40820020 # bne .L_80197530
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    addi 5, 1, 0x8
    addi 7, 31, 0x44
    li 6, 0x407
    li 9, 0x0
    bl fn_801EF830
L_80197530:
    lwz 0, 0xe4(1)
    lwz 31, 0xdc(1)
    lwz 30, 0xd8(1)
    lwz 29, 0xd4(1)
    lwz 28, 0xd0(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

