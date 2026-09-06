# Fresh-gap-hunt batch 16 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000B814
etb_8000B814:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000B814, 8

.section extabindex, "a"
.balign 4
.global eti_80019DE0
eti_80019DE0:
    .4byte fn_802570BC
    .4byte 0x00000324
    .4byte etb_8000B814
.size eti_80019DE0, 12

.text
.balign 4
.global fn_802570BC

fn_802570BC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    bl GetBusyLocked
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_802570FC
    li 3, 0x0
    .4byte 0x480002C8 # b .L_802573C0
L_802570FC:
    mr 3, 28
    bl Player_GetField_0x454
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257114
    li 3, 0x0
    .4byte 0x480002B0 # b .L_802573C0
L_80257114:
    li 0, 0x3
    mr 3, 28
    mr 4, 28
    li 5, 0x0
    mtctr 0
L_80257128:
    lwz 0, 0xb1c(3)
    cmpwi 0, 0x0
    .4byte 0x418000D4 # blt .L_80257204
    lwz 0, 0xb5c(3)
    cmpw 0, 30
    .4byte 0x408200C8 # bne .L_80257204
    lfs 0, 0x550(4)
    lfs 4, 0x0(29)
    lfs 1, 0x554(4)
    fcmpo cr0, 0, 4
    lfs 2, 0x558(4)
    lfs 3, 0x55c(4)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80257164
    fmr 0, 4
L_80257164:
    lfs 4, 0x4(29)
    fcmpo cr0, 1, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80257178
    fmr 1, 4
L_80257178:
    lfs 4, 0x8(29)
    fcmpo cr0, 2, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8025718C
    fmr 2, 4
L_8025718C:
    lfs 4, 0xc(29)
    fcmpo cr0, 3, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802571A0
    fmr 3, 4
L_802571A0:
    fcmpo cr0, 2, 0
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_802571C0
    fcmpo cr0, 3, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802571C0
    li 0, 0x1
L_802571C0:
    clrlwi. 0, 0, 24
    .4byte 0x41820040 # beq .L_80257204
    slwi 0, 5, 4
    .4byte 0xC022D120 # lfs f1, lbl_805400C0@sda21(r0)
    add 4, 28, 0
    li 3, 0x1
    lfs 2, 0x558(4)
    lfs 0, 0x550(4)
    fsubs 0, 0, 2
    fmadds 0, 1, 0, 2
    stfs 0, 0x0(31)
    lfs 2, 0x55c(4)
    lfs 0, 0x554(4)
    fsubs 0, 0, 2
    fmadds 0, 1, 0, 2
    stfs 0, 0x4(31)
    .4byte 0x480001C0 # b .L_802573C0
L_80257204:
    addi 3, 3, 0x4
    addi 4, 4, 0x10
    addi 5, 5, 0x1
    .4byte 0x4200FF18 # bdnz .L_80257128
    lwz 0, 0xb28(28)
    cmpwi 0, 0x0
    .4byte 0x418000CC # blt .L_802572E8
    lwz 0, 0x3b4(28)
    cmpw 30, 0
    .4byte 0x408200C0 # bne .L_802572E8
    lfs 6, 0x580(28)
    lfs 4, 0x0(29)
    lfs 5, 0x588(28)
    fmr 0, 6
    fcmpo cr0, 6, 4
    lfs 1, 0x584(28)
    fmr 2, 5
    lfs 3, 0x58c(28)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80257258
    fmr 0, 4
L_80257258:
    lfs 4, 0x4(29)
    fcmpo cr0, 1, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8025726C
    fmr 1, 4
L_8025726C:
    lfs 4, 0x8(29)
    fcmpo cr0, 2, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257280
    fmr 2, 4
L_80257280:
    lfs 4, 0xc(29)
    fcmpo cr0, 3, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257294
    fmr 3, 4
L_80257294:
    fcmpo cr0, 2, 0
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_802572B4
    fcmpo cr0, 3, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802572B4
    li 0, 0x1
L_802572B4:
    clrlwi. 0, 0, 24
    .4byte 0x41820030 # beq .L_802572E8
    fsubs 0, 6, 5
    .4byte 0xC022D120 # lfs f1, lbl_805400C0@sda21(r0)
    li 3, 0x1
    fmadds 0, 1, 0, 5
    stfs 0, 0x0(31)
    lfs 2, 0x58c(28)
    lfs 0, 0x584(28)
    fsubs 0, 0, 2
    fmadds 0, 1, 0, 2
    stfs 0, 0x4(31)
    .4byte 0x480000DC # b .L_802573C0
L_802572E8:
    lwz 0, 0xb3c(28)
    cmpwi 0, 0x0
    .4byte 0x418000CC # blt .L_802573BC
    lwz 0, 0xb70(28)
    cmpw 0, 30
    .4byte 0x408200C0 # bne .L_802573BC
    lfs 6, 0x5a0(28)
    lfs 4, 0x0(29)
    lfs 5, 0x5a8(28)
    fmr 0, 6
    fcmpo cr0, 6, 4
    lfs 1, 0x5a4(28)
    fmr 2, 5
    lfs 3, 0x5ac(28)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8025732C
    fmr 0, 4
L_8025732C:
    lfs 4, 0x4(29)
    fcmpo cr0, 1, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80257340
    fmr 1, 4
L_80257340:
    lfs 4, 0x8(29)
    fcmpo cr0, 2, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257354
    fmr 2, 4
L_80257354:
    lfs 4, 0xc(29)
    fcmpo cr0, 3, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257368
    fmr 3, 4
L_80257368:
    fcmpo cr0, 2, 0
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_80257388
    fcmpo cr0, 3, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257388
    li 0, 0x1
L_80257388:
    clrlwi. 0, 0, 24
    .4byte 0x41820030 # beq .L_802573BC
    fsubs 0, 6, 5
    .4byte 0xC022D120 # lfs f1, lbl_805400C0@sda21(r0)
    li 3, 0x1
    fmadds 0, 1, 0, 5
    stfs 0, 0x0(31)
    lfs 2, 0x5ac(28)
    lfs 0, 0x5a4(28)
    fsubs 0, 0, 2
    fmadds 0, 1, 0, 2
    stfs 0, 0x4(31)
    .4byte 0x48000008 # b .L_802573C0
L_802573BC:
    li 3, 0x0
L_802573C0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

