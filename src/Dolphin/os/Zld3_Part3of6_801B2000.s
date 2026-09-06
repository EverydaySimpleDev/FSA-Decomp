# ZLD3 cluster, part 3/6 (312B). Private helper called from update() -
# uses the ease primitive fn_801F71A4, the player validity/position
# family fn_8023DE58/fn_8023E724/Player_GetCapabilityFlagByIndex, plus unfamiliar
# fn_802303FC/fn_80230498/fn_80230BF4.
.section extab, "a"
.balign 4
.global etb_80007BA4
etb_80007BA4:
    .4byte 0x284A0000
    .4byte 0x00000000
.size etb_80007BA4, 8

.section extabindex, "a"
.balign 4
.global eti_80014AF4
eti_80014AF4:
    .4byte fn_801B2000
    .4byte 0x00000138
    .4byte etb_80007BA4
.size eti_80014AF4, 12

.text
.balign 4
.global fn_801B2000

fn_801B2000:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stmw 27, 0xc(1)
    mr 27, 3
    mr 28, 4
    lfs 31, 0x10(3)
    mr 30, 27
    li 29, 0x0
    fsubs 31, 31, 1
L_801B2030:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200D0 # beq .L_801B210C
    lwz 31, 0x4(27)
    mr 3, 29
    bl fn_8023DE58
    cmpw 31, 3
    .4byte 0x408200BC # bne .L_801B210C
    mr 3, 29
    bl fn_8023E724
    lfs 0, 0x0(3)
    cmpwi 28, 0x0
    stfs 0, 0x288(30)
    lfs 0, 0x4(3)
    stfs 0, 0x28c(30)
    lfs 0, 0x8(3)
    stfs 0, 0x290(30)
    .4byte 0x40820038 # bne .L_801B20B0
    lbz 0, 0x258(27)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_801B208C
    stfs 31, 0x28c(30)
L_801B208C:
    mr 3, 29
    addi 4, 30, 0x288
    li 5, 0x3e
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000060 # b .L_801B210C
L_801B20B0:
    fmr 1, 31
    .4byte 0xC042B968 # lfs f2, lbl_8053E908@sda21(r0)
    .4byte 0xC062B940 # lfs f3, lbl_8053E8E0@sda21(r0)
    addi 3, 30, 0x28c
    bl fn_801F71A4
    mr 3, 29
    li 4, 0x2
    bl fn_80230BF4
    mr 3, 29
    addi 4, 30, 0x288
    li 5, 0xff
    bl fn_802303FC
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x4(3)
    .4byte 0xC002B940 # lfs f0, lbl_8053E8E0@sda21(r0)
    fsubs 1, 1, 31
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801B210C
    li 0, 0x1
    stb 0, 0x258(27)
L_801B210C:
    addi 29, 29, 0x1
    addi 30, 30, 0xc
    cmpwi 29, 0x4
    .4byte 0x4180FF18 # blt .L_801B2030
    psq_l 31, 0x28(1), 0, 0
    lfd 31, 0x20(1)
    lmw 27, 0xc(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

