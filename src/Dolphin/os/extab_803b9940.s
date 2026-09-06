# fn_803B9940 - helper (0xE4)
.section extab, "a"
.balign 4
.global etb_8000F684
etb_8000F684:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000F684, 8

.section extabindex, "a"
.balign 4
.global eti_8001F390
eti_8001F390:
    .4byte fn_803B9940
    .4byte 0x000000E4
    .4byte etb_8000F684
.size eti_8001F390, 12

.text
.balign 4
.global fn_803B9940

fn_803B9940:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    addi 3, 30, 0x1fd4
    bl OSTryLockMutex
    cmpwi 3, 0x0
    .4byte 0x418200A4 # beq .L_803B9A08
    lwz 0, 0x1fd0(30)
    cmplwi 0, 0xd
    .4byte 0x41810088 # bgt .L_803B99F8
    lis 3, jumptable_804AFB54@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AFB54@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 31, 0x2
    .4byte 0x48000068 # b .L_803B99F8
    li 31, 0x1
    .4byte 0x48000060 # b .L_803B99F8
    li 31, 0x3
    .4byte 0x48000058 # b .L_803B99F8
    li 31, 0x4
    .4byte 0x48000050 # b .L_803B99F8
    li 31, 0x5
    .4byte 0x48000048 # b .L_803B99F8
    li 31, 0x0
    .4byte 0x48000040 # b .L_803B99F8
    li 31, 0x7
    .4byte 0x48000038 # b .L_803B99F8
    li 31, 0x6
    .4byte 0x48000030 # b .L_803B99F8
    li 31, 0xb
    .4byte 0x48000028 # b .L_803B99F8
    li 31, 0xc
    .4byte 0x48000020 # b .L_803B99F8
    li 31, 0x9
    .4byte 0x48000018 # b .L_803B99F8
    li 31, 0xa
    .4byte 0x48000010 # b .L_803B99F8
    li 31, 0x8
    .4byte 0x48000008 # b .L_803B99F8
    li 31, 0xe
L_803B99F8:
    addi 3, 30, 0x1fd4
    bl OSUnlockMutex
    mr 3, 31
    .4byte 0x48000008 # b .L_803B9A0C
L_803B9A08:
    li 3, 0xe
L_803B9A0C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

