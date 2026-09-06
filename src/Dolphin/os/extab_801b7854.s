# Fresh-gap-hunt batch 12 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80007C9C
etb_80007C9C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007C9C, 8

.global etb_80007CA4
etb_80007CA4:
    .4byte 0x28CA0000
    .4byte 0x00000000
.size etb_80007CA4, 8

.section extabindex, "a"
.balign 4
.global eti_80014C68
eti_80014C68:
    .4byte fn_801B7854
    .4byte 0x00000088
    .4byte etb_80007C9C
.size eti_80014C68, 12

.global eti_80014C74
eti_80014C74:
    .4byte fn_801B78DC
    .4byte 0x00000458
    .4byte etb_80007CA4
.size eti_80014C74, 12

.text
.balign 4
.global fn_801B7854
.global fn_801B78DC

fn_801B7854:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x2
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 4, 0x98(3)
    addi 3, 31, 0x270
    bl fn_801D2264
    lfs 2, 0x254(31)
    .4byte 0xC002BB54 # lfs f0, lbl_8053EAF4@sda21(r0)
    .4byte 0xC022BB58 # lfs f1, lbl_8053EAF8@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0xC002BB50 # lfs f0, lbl_8053EAF0@sda21(r0)
    fmuls 2, 2, 1
    fcmpo cr0, 2, 0
    .4byte 0x4081000C # ble .L_801B78A0
    fmr 2, 0
    .4byte 0x48000014 # b .L_801B78B0
L_801B78A0:
    .4byte 0xC002BB5C # lfs f0, lbl_8053EAFC@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x40800008 # bge .L_801B78B0
    fmr 2, 0
L_801B78B0:
    .4byte 0xC022BB60 # lfs f1, lbl_8053EB00@sda21(r0)
    mr 3, 31
    .4byte 0xC002BB50 # lfs f0, lbl_8053EAF0@sda21(r0)
    fmadds 0, 2, 1, 0
    stfs 0, 0x2a0(31)
    bl fn_801CE4BC
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801B78DC:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stmw 27, 0x1c(1)
    mr 30, 3
    mr 31, 4
    lwz 0, 0x248(3)
    cmpwi 0, 0x2
    .4byte 0x40800204 # bge .L_801B7B18
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801B7924
    .4byte 0x480001F8 # b .L_801B7B18
L_801B7924:
    lwz 0, 0x24c(30)
    li 27, 0x0
    cmpwi 0, 0x1e
    .4byte 0x418001E8 # blt .L_801B7B18
    lis 3, lbl_80539D40@ha
    mr 28, 27
    lfs 31, lbl_80539D40@l(3)
    mr 29, 27
L_801B7944:
    mr 3, 30
    mr 4, 29
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x41820184 # beq .L_801B7AD8
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 29
    lfs 0, 0xc(30)
    fsubs 0, 0, 1
    fabs 30, 0
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(30)
    .4byte 0xC002BB64 # lfs f0, lbl_8053EB04@sda21(r0)
    fsubs 1, 1, 2
    fcmpo cr0, 30, 0
    fabs 29, 1
    cror eq, lt, eq
    .4byte 0x408200A0 # bne .L_801B7A34
    mr 3, 30
    mr 4, 29
    addi 5, 30, 0xc
    bl fn_801D0DA0
    fmr 30, 1
    .4byte 0xC002BB68 # lfs f0, lbl_8053EB08@sda21(r0)
    fcmpo cr0, 0, 30
    .4byte 0x40800124 # bge .L_801B7AD8
    .4byte 0xC002BB6C # lfs f0, lbl_8053EB0C@sda21(r0)
    fcmpo cr0, 30, 0
    .4byte 0x40800118 # bge .L_801B7AD8
    fcmpo cr0, 30, 31
    .4byte 0x40800110 # bge .L_801B7AD8
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(30)
    fcmpo cr0, 0, 1
    .4byte 0x4080002C # bge .L_801B7A0C
    fmr 1, 29
    mr 3, 30
    li 4, 0x2
    bl fn_801CFD68
    clrlwi. 0, 3, 24
    .4byte 0x408200E0 # bne .L_801B7AD8
    fmr 31, 30
    li 28, 0x2
    li 27, 0x1
    .4byte 0x480000D0 # b .L_801B7AD8
L_801B7A0C:
    fmr 1, 29
    mr 3, 30
    li 4, 0x3
    bl fn_801CFD68
    clrlwi. 0, 3, 24
    .4byte 0x408200B8 # bne .L_801B7AD8
    fmr 31, 30
    li 28, 0x3
    li 27, 0x1
    .4byte 0x480000A8 # b .L_801B7AD8
L_801B7A34:
    fcmpo cr0, 29, 0
    cror eq, lt, eq
    .4byte 0x4082009C # bne .L_801B7AD8
    mr 3, 30
    mr 4, 29
    addi 5, 30, 0xc
    bl fn_801D0DA0
    fmr 29, 1
    .4byte 0xC002BB68 # lfs f0, lbl_8053EB08@sda21(r0)
    fcmpo cr0, 0, 29
    .4byte 0x4080007C # bge .L_801B7AD8
    .4byte 0xC002BB6C # lfs f0, lbl_8053EB0C@sda21(r0)
    fcmpo cr0, 29, 0
    .4byte 0x40800070 # bge .L_801B7AD8
    fcmpo cr0, 29, 31
    .4byte 0x40800068 # bge .L_801B7AD8
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(30)
    fcmpo cr0, 0, 1
    .4byte 0x4080002C # bge .L_801B7AB4
    fmr 1, 30
    mr 3, 30
    li 4, 0x0
    bl fn_801CFD68
    clrlwi. 0, 3, 24
    .4byte 0x40820038 # bne .L_801B7AD8
    fmr 31, 29
    li 28, 0x0
    li 27, 0x1
    .4byte 0x48000028 # b .L_801B7AD8
L_801B7AB4:
    fmr 1, 30
    mr 3, 30
    li 4, 0x1
    bl fn_801CFD68
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_801B7AD8
    fmr 31, 29
    li 28, 0x1
    mr 27, 28
L_801B7AD8:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FE64 # blt .L_801B7944
    clrlwi. 0, 27, 24
    .4byte 0x41820030 # beq .L_801B7B18
    li 3, 0x29
    bl fn_801CD664
    addi 0, 3, 0x3c
    .4byte 0xC002BB70 # lfs f0, lbl_8053EB10@sda21(r0)
    stw 0, 0x250(30)
    li 3, 0x0
    li 0, 0x2
    stfs 0, 0x258(30)
    stw 3, 0x24c(30)
    stw 0, 0x248(30)
    stw 28, 0x98(30)
L_801B7B18:
    lwz 4, 0x248(30)
    cmpwi 4, 0x3
    .4byte 0x418201A4 # beq .L_801B7CC4
    .4byte 0x408001E4 # bge .L_801B7D08
    cmpwi 4, 0x0
    .4byte 0x4182000C # beq .L_801B7B38
    .4byte 0x4080005C # bge .L_801B7B8C
    .4byte 0x480001D4 # b .L_801B7D08
L_801B7B38:
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x418001C4 # blt .L_801B7D08
    li 3, 0x29
    bl fn_801CD664
    addi 0, 3, 0x3c
    .4byte 0xC002BB54 # lfs f0, lbl_8053EAF4@sda21(r0)
    stw 0, 0x250(30)
    stfs 0, 0x258(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x2
    .4byte 0x41820010 # beq .L_801B7B78
    mr 3, 30
    bl fn_801CF6B8
    stw 3, 0x98(30)
L_801B7B78:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x24c(30)
    stw 0, 0x248(30)
    .4byte 0x48000180 # b .L_801B7D08
L_801B7B8C:
    clrlwi. 0, 31, 24
    .4byte 0x41820024 # beq .L_801B7BB4
    lwz 4, 0x98(30)
    mr 3, 30
    bl fn_801CF720
    stw 3, 0x98(30)
    lwz 3, 0x250(30)
    addi 0, 3, 0xa
    stw 0, 0x250(30)
    .4byte 0x48000158 # b .L_801B7D08
L_801B7BB4:
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x41800148 # blt .L_801B7D08
    cmpwi 4, 0x1
    .4byte 0x408200B8 # bne .L_801B7C80
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BB50 # lfs f1, lbl_8053EAF0@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BB74 # lfs f0, lbl_8053EB14@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080002C # bge .L_801B7C3C
    li 3, 0x3d
    bl fn_801CD664
    addi 0, 3, 0x28
    .4byte 0xC002BB5C # lfs f0, lbl_8053EAFC@sda21(r0)
    stw 0, 0x250(30)
    li 0, 0x0
    stfs 0, 0x258(30)
    stw 0, 0x24c(30)
    stw 0, 0x248(30)
    .4byte 0x480000D0 # b .L_801B7D08
L_801B7C3C:
    li 3, 0x29
    bl fn_801CD664
    addi 0, 3, 0x3c
    .4byte 0xC002BB54 # lfs f0, lbl_8053EAF4@sda21(r0)
    stw 0, 0x250(30)
    stfs 0, 0x258(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x2
    .4byte 0x41820010 # beq .L_801B7C6C
    mr 3, 30
    bl fn_801CF6B8
    stw 3, 0x98(30)
L_801B7C6C:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x24c(30)
    stw 0, 0x248(30)
    .4byte 0x4800008C # b .L_801B7D08
L_801B7C80:
    li 3, 0x29
    bl fn_801CD664
    addi 0, 3, 0x3c
    .4byte 0xC002BB54 # lfs f0, lbl_8053EAF4@sda21(r0)
    stw 0, 0x250(30)
    stfs 0, 0x258(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x2
    .4byte 0x41820010 # beq .L_801B7CB0
    mr 3, 30
    bl fn_801CF6B8
    stw 3, 0x98(30)
L_801B7CB0:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x24c(30)
    stw 0, 0x248(30)
    .4byte 0x48000048 # b .L_801B7D08
L_801B7CC4:
    lwz 0, 0x24c(30)
    cmpwi 0, 0x1
    .4byte 0x4081003C # ble .L_801B7D08
    lfs 1, 0x14(30)
    .4byte 0xC002BB5C # lfs f0, lbl_8053EAFC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820028 # bne .L_801B7D08
    li 3, 0x3d
    bl fn_801CD664
    addi 0, 3, 0x28
    .4byte 0xC002BB5C # lfs f0, lbl_8053EAFC@sda21(r0)
    stw 0, 0x250(30)
    li 0, 0x0
    stfs 0, 0x258(30)
    stw 0, 0x24c(30)
    stw 0, 0x248(30)
L_801B7D08:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    lmw 27, 0x1c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

