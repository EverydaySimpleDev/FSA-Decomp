# fn_803B9A94 - helper (0xA8)
.section extab, "a"
.balign 4
.global etb_8000F694
etb_8000F694:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_8000F694, 8

.section extabindex, "a"
.balign 4
.global eti_8001F3A8
eti_8001F3A8:
    .4byte fn_803B9A94
    .4byte 0x000000A8
    .4byte etb_8000F694
.size eti_8001F3A8, 12

.text
.balign 4
.global fn_803B9A94

fn_803B9A94:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 25, 3
    mr 26, 4
    mr 27, 5
    mr 28, 6
    mr 29, 7
    mr 30, 8
    addi 3, 25, 0x1fd4
    li 31, 0x0
    bl OSTryLockMutex
    cmpwi 3, 0x0
    .4byte 0x41820058 # beq .L_803B9B24
    lwz 0, 0x1fd0(25)
    cmpwi 0, 0x3
    .4byte 0x40820038 # bne .L_803B9B10
    add 31, 25, 30
    mr 3, 26
    mr 5, 27
    addi 4, 31, 0x20
    bl memcpy
    mr 3, 28
    mr 5, 29
    addi 4, 31, 0x280
    bl memcpy
    li 0, 0x1
    li 31, 0x1
    stw 0, 0x1fd0(25)
    .4byte 0x48000010 # b .L_803B9B1C
L_803B9B10:
    li 0, 0x2
    li 31, 0x2
    stw 0, 0x1fd0(25)
L_803B9B1C:
    addi 3, 25, 0x1fd4
    bl OSUnlockMutex
L_803B9B24:
    mr 3, 31
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

