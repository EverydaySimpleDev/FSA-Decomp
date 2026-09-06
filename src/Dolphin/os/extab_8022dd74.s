# Fresh-gap-hunt batch 15 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000AA20
etb_8000AA20:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AA20, 8

.global etb_8000AA28
etb_8000AA28:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AA28, 8

.global etb_8000AA30
etb_8000AA30:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AA30, 8

.global etb_8000AA38
etb_8000AA38:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AA38, 8

.global etb_8000AA40
etb_8000AA40:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000AA40, 8

.global etb_8000AA48
etb_8000AA48:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AA48, 8

.section extabindex, "a"
.balign 4
.global eti_80018A3C
eti_80018A3C:
    .4byte fn_8022DD74
    .4byte 0x0000009C
    .4byte etb_8000AA20
.size eti_80018A3C, 12

.global eti_80018A48
eti_80018A48:
    .4byte fn_8022DE10
    .4byte 0x0000009C
    .4byte etb_8000AA28
.size eti_80018A48, 12

.global eti_80018A54
eti_80018A54:
    .4byte fn_8022DEAC
    .4byte 0x0000009C
    .4byte etb_8000AA30
.size eti_80018A54, 12

.global eti_80018A60
eti_80018A60:
    .4byte fn_8022DF48
    .4byte 0x0000008C
    .4byte etb_8000AA38
.size eti_80018A60, 12

.global eti_80018A6C
eti_80018A6C:
    .4byte fn_8022DFD4
    .4byte 0x000000B4
    .4byte etb_8000AA40
.size eti_80018A6C, 12

.global eti_80018A78
eti_80018A78:
    .4byte fn_8022E088
    .4byte 0x0000008C
    .4byte etb_8000AA48
.size eti_80018A78, 12

.text
.balign 4
.global fn_8022DD74
.global fn_8022DE10
.global fn_8022DEAC
.global fn_8022DF48
.global fn_8022DFD4
.global fn_8022E088

fn_8022DD74:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022DD94
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022DE00
L_8022DD94:
    .4byte 0x4082000C # bne .L_8022DDA0
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022DDE0
L_8022DDA0:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022DDB0
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022DDE0
L_8022DDB0:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022DDC0
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022DDE0
L_8022DDC0:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022DDDC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022DDE0
L_8022DDDC:
    lbz 0, 0xcac(4)
L_8022DDE0:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022DDFC
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024AFF8
    .4byte 0x48000008 # b .L_8022DE00
L_8022DDFC:
    li 3, 0x0
L_8022DE00:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022DE10:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022DE30
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022DE9C
L_8022DE30:
    .4byte 0x4082000C # bne .L_8022DE3C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022DE7C
L_8022DE3C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022DE4C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022DE7C
L_8022DE4C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022DE5C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022DE7C
L_8022DE5C:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022DE78
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022DE7C
L_8022DE78:
    lbz 0, 0xcac(5)
L_8022DE7C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022DE98
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_8024B108
    .4byte 0x48000008 # b .L_8022DE9C
L_8022DE98:
    li 3, 0x0
L_8022DE9C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022DEAC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022DECC
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022DF38
L_8022DECC:
    .4byte 0x4082000C # bne .L_8022DED8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022DF18
L_8022DED8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022DEE8
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022DF18
L_8022DEE8:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022DEF8
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022DF18
L_8022DEF8:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022DF14
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022DF18
L_8022DF14:
    lbz 0, 0xcac(4)
L_8022DF18:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022DF34
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024B24C
    .4byte 0x48000008 # b .L_8022DF38
L_8022DF34:
    li 3, 0x0
L_8022DF38:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022DF48:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x41820068 # beq .L_8022DFC4
    .4byte 0x4082000C # bne .L_8022DF6C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022DFAC
L_8022DF6C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022DF7C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022DFAC
L_8022DF7C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022DF8C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022DFAC
L_8022DF8C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022DFA8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022DFAC
L_8022DFA8:
    lbz 0, 0xcac(4)
L_8022DFAC:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8022DFC4
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024B274
L_8022DFC4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022DFD4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x40820018 # bne .L_8022E000
    .4byte 0xC002D068 # lfs f0, lbl_80540008@sda21(r0)
    addi 3, 1, 0x10
    stfs 0, 0x10(1)
    stfs 0, 0x14(1)
    .4byte 0x4800007C # b .L_8022E078
L_8022E000:
    .4byte 0x4082000C # bne .L_8022E00C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022E04C
L_8022E00C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022E01C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022E04C
L_8022E01C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022E02C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022E04C
L_8022E02C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022E048
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E04C
L_8022E048:
    lbz 0, 0xcac(4)
L_8022E04C:
    clrlwi. 0, 0, 24
    .4byte 0x40820018 # bne .L_8022E068
    .4byte 0xC002D068 # lfs f0, lbl_80540008@sda21(r0)
    addi 3, 1, 0x8
    stfs 0, 0x8(1)
    stfs 0, 0xc(1)
    .4byte 0x48000014 # b .L_8022E078
L_8022E068:
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_802422C4
L_8022E078:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8022E088:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80ED90D0 # lwz r7, lbl_8053AC90@sda21(r0)
    cmplwi 7, 0x0
    .4byte 0x41820068 # beq .L_8022E104
    .4byte 0x4082000C # bne .L_8022E0AC
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022E0EC
L_8022E0AC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022E0BC
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022E0EC
L_8022E0BC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022E0CC
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022E0EC
L_8022E0CC:
    slwi 0, 3, 2
    add 6, 7, 0
    lwz 6, 0x4(6)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022E0E8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E0EC
L_8022E0E8:
    lbz 0, 0xcac(6)
L_8022E0EC:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8022E104
    slwi 0, 3, 2
    add 3, 7, 0
    lwz 3, 0x4(3)
    bl fn_8024B298
L_8022E104:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

