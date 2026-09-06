# 901KB-gap non-actor manager block: 14 function(s), 4,292 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_8000EC70
etb_8000EC70:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000EC70, 8

.global etb_8000EC78
etb_8000EC78:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EC78, 8

.global etb_8000EC80
etb_8000EC80:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EC80, 8

.global etb_8000EC88
etb_8000EC88:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EC88, 8

.global etb_8000EC90
etb_8000EC90:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EC90, 8

.global etb_8000EC98
etb_8000EC98:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EC98, 8

.global etb_8000ECA0
etb_8000ECA0:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_8000ECA0, 8

.global etb_8000ECA8
etb_8000ECA8:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000ECA8, 8

.global etb_8000ECB0
etb_8000ECB0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000ECB0, 8

.global etb_8000ECB8
etb_8000ECB8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000ECB8, 8

.global etb_8000ECC0
etb_8000ECC0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000ECC0, 8

.global etb_8000ECC8
etb_8000ECC8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000ECC8, 8

.global etb_8000ECD0
etb_8000ECD0:
    .4byte 0x190A0000
    .4byte 0x00000000
.size etb_8000ECD0, 8

.section extabindex, "a"
.balign 4
.global eti_8001E9F4
eti_8001E9F4:
    .4byte fn_8037E4BC
    .4byte 0x00000090
    .4byte etb_8000EC70
.size eti_8001E9F4, 12

.global eti_8001EA00
eti_8001EA00:
    .4byte fn_8037E54C
    .4byte 0x00000148
    .4byte etb_8000EC78
.size eti_8001EA00, 12

.global eti_8001EA0C
eti_8001EA0C:
    .4byte fn_8037E694
    .4byte 0x00000118
    .4byte etb_8000EC80
.size eti_8001EA0C, 12

.global eti_8001EA18
eti_8001EA18:
    .4byte fn_8037E7AC
    .4byte 0x00000128
    .4byte etb_8000EC88
.size eti_8001EA18, 12

.global eti_8001EA24
eti_8001EA24:
    .4byte fn_8037E8D4
    .4byte 0x00000120
    .4byte etb_8000EC90
.size eti_8001EA24, 12

.global eti_8001EA30
eti_8001EA30:
    .4byte fn_8037E9F4
    .4byte 0x00000118
    .4byte etb_8000EC98
.size eti_8001EA30, 12

.global eti_8001EA3C
eti_8001EA3C:
    .4byte fn_8037EB4C
    .4byte 0x0000014C
    .4byte etb_8000ECA0
.size eti_8001EA3C, 12

.global eti_8001EA48
eti_8001EA48:
    .4byte fn_8037EC98
    .4byte 0x000001F4
    .4byte etb_8000ECA8
.size eti_8001EA48, 12

.global eti_8001EA54
eti_8001EA54:
    .4byte fn_8037EE8C
    .4byte 0x00000128
    .4byte etb_8000ECB0
.size eti_8001EA54, 12

.global eti_8001EA60
eti_8001EA60:
    .4byte fn_8037EFB4
    .4byte 0x00000118
    .4byte etb_8000ECB8
.size eti_8001EA60, 12

.global eti_8001EA6C
eti_8001EA6C:
    .4byte fn_8037F0CC
    .4byte 0x00000118
    .4byte etb_8000ECC0
.size eti_8001EA6C, 12

.global eti_8001EA78
eti_8001EA78:
    .4byte fn_8037F1E4
    .4byte 0x00000118
    .4byte etb_8000ECC8
.size eti_8001EA78, 12

.global eti_8001EA84
eti_8001EA84:
    .4byte fn_8037F2FC
    .4byte 0x00000284
    .4byte etb_8000ECD0
.size eti_8001EA84, 12

.text
.balign 4
.global fn_8037E4BC
.global fn_8037E54C
.global fn_8037E694
.global fn_8037E7AC
.global fn_8037E8D4
.global fn_8037E9F4
.global fn_8037EB0C
.global fn_8037EB4C
.global fn_8037EC98
.global fn_8037EE8C
.global fn_8037EFB4
.global fn_8037F0CC
.global fn_8037F1E4
.global fn_8037F2FC

fn_8037E4BC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x1
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    li 29, 0x0
L_8037E4E0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 31, 29
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_8037E51C
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 0, 30, 0x114
    lwzx 3, 3, 0
    bl fn_80390818
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8037E51C
    li 3, 0x1
    .4byte 0x48000018 # b .L_8037E530
L_8037E51C:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFB8 # blt .L_8037E4E0
    li 3, 0x0
L_8037E530:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8037E54C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4180011C # blt .L_8037E67C
    cmpwi 31, 0x4
    .4byte 0x40800114 # bge .L_8037E67C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8037E5CC
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8037E5B4
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8037E5B4
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8037E5B4
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8037E5B4
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8037E5B4
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8037E5B8
L_8037E5B4:
    li 0, 0x1
L_8037E5B8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8037E620
L_8037E5CC:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8037E60C
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8037E60C
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8037E60C
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8037E60C
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8037E60C
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8037E60C
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8037E610
L_8037E60C:
    li 0, 0x1
L_8037E610:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8037E620:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8037E644
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8037E644
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8037E644
    .4byte 0x48000008 # b .L_8037E648
L_8037E644:
    mr 3, 31
L_8037E648:
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x118(4)
    cmpwi 0, 0x8
    .4byte 0x41800024 # blt .L_8037E67C
    lwz 0, 0x11c(4)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8037E67C
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x4c(3)
    .4byte 0x48000008 # b .L_8037E680
L_8037E67C:
    li 3, 0x0
L_8037E680:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037E694:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8037E708
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8037E6F0
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8037E6F0
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8037E6F0
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8037E6F0
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8037E6F0
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8037E6F4
L_8037E6F0:
    li 0, 0x1
L_8037E6F4:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8037E75C
L_8037E708:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8037E748
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8037E748
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8037E748
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8037E748
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8037E748
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8037E748
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8037E74C
L_8037E748:
    li 0, 0x1
L_8037E74C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8037E75C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8037E780
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8037E780
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8037E780
    .4byte 0x48000008 # b .L_8037E784
L_8037E780:
    mr 3, 31
L_8037E784:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 3, 0x44(3)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037E7AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8037E820
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8037E808
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8037E808
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8037E808
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8037E808
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8037E808
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8037E80C
L_8037E808:
    li 0, 0x1
L_8037E80C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8037E874
L_8037E820:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8037E860
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8037E860
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8037E860
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8037E860
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8037E860
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8037E860
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8037E864
L_8037E860:
    li 0, 0x1
L_8037E864:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8037E874:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8037E898
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8037E898
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8037E898
    .4byte 0x48000008 # b .L_8037E89C
L_8037E898:
    mr 3, 31
L_8037E89C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    li 0, 0x1
    slw 0, 0, 3
    lbz 3, 0xe8(4)
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037E8D4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8037E948
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8037E930
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8037E930
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8037E930
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8037E930
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8037E930
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8037E934
L_8037E930:
    li 0, 0x1
L_8037E934:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8037E99C
L_8037E948:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8037E988
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8037E988
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8037E988
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8037E988
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8037E988
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8037E988
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8037E98C
L_8037E988:
    li 0, 0x1
L_8037E98C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8037E99C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8037E9C0
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8037E9C0
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8037E9C0
    .4byte 0x48000008 # b .L_8037E9C4
L_8037E9C0:
    mr 3, 31
L_8037E9C4:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    li 0, 0x1
    slw 0, 0, 3
    lbz 3, 0xe8(4)
    clrlwi 0, 0, 24
    or 0, 3, 0
    stb 0, 0xe8(4)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037E9F4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8037EA68
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8037EA50
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8037EA50
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8037EA50
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8037EA50
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8037EA50
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8037EA54
L_8037EA50:
    li 0, 0x1
L_8037EA54:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8037EABC
L_8037EA68:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8037EAA8
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8037EAA8
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8037EAA8
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8037EAA8
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8037EAA8
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8037EAA8
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8037EAAC
L_8037EAA8:
    li 0, 0x1
L_8037EAAC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8037EABC:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8037EAE0
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8037EAE0
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8037EAE0
    .4byte 0x48000008 # b .L_8037EAE4
L_8037EAE0:
    mr 3, 31
L_8037EAE4:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    bl fn_80390850
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037EB0C:
    .4byte 0x810D91B8 # lwz r8, lbl_8053AD78@sda21(r0)
    lfs 0, 0x5c(8)
    stfs 0, 0x0(3)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lfs 0, 0x64(3)
    stfs 0, 0x0(4)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lfs 0, 0x60(3)
    stfs 0, 0x0(5)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lfs 0, 0x68(3)
    stfs 0, 0x0(6)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lbz 0, 0xe6(3)
    stb 0, 0x0(7)
    blr

fn_8037EB4C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    li 29, 0x0
    lis 3, lbl_8050DB0C@ha
    mr 28, 29
    li 31, 0x0
    addi 30, 3, lbl_8050DB0C@l
L_8037EB8C:
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    addi 0, 29, 0x114
    .4byte 0xC0420124 # lfs f2, lbl_805430C4@sda21(r0)
    lwzx 3, 5, 0
    lhz 0, 0x28(3)
    extrwi. 0, 0, 1, 25
    .4byte 0x41820008 # beq .L_8037EBAC
    lfs 2, 0x38(30)
L_8037EBAC:
    lwz 4, 0x48(3)
    lbz 0, 0x24(3)
    lfs 1, 0xb8(4)
    lfs 0, 0xbc(4)
    cmplwi 0, 0x0
    fmuls 3, 2, 1
    fmuls 4, 2, 0
    .4byte 0x4182008C # beq .L_8037EC54
    .4byte 0xC022011C # lfs f1, lbl_805430BC@sda21(r0)
    add 3, 5, 28
    lfs 2, 0x124(3)
    fmuls 30, 1, 3
    lfs 0, 0x128(3)
    fmuls 31, 1, 4
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    fsubs 1, 2, 30
    fsubs 2, 0, 31
    bl fn_8043DF8C
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    add 4, 0, 28
    lfs 1, 0x124(4)
    lfs 0, 0x128(4)
    fadds 1, 1, 30
    fsubs 2, 0, 31
    bl fn_8043DF8C
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    add 4, 0, 28
    lfs 1, 0x124(4)
    lfs 0, 0x128(4)
    fsubs 1, 1, 30
    fadds 2, 0, 31
    bl fn_8043DF8C
    .4byte 0x800D91B8 # lwz r0, lbl_8053AD78@sda21(r0)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    add 4, 0, 28
    lfs 1, 0x124(4)
    lfs 0, 0x128(4)
    fadds 1, 1, 30
    fadds 2, 0, 31
    bl fn_8043DF8C
L_8037EC54:
    addi 31, 31, 0x1
    addi 28, 28, 0xc
    cmpwi 31, 0x4
    addi 29, 29, 0x4
    .4byte 0x4180FF28 # blt .L_8037EB8C
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x44(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8037EC98:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    mr 30, 3
    mr 31, 4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8037ED10
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8037ECF8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8037ECF8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8037ECF8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8037ECF8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8037ECF8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8037ECFC
L_8037ECF8:
    li 0, 0x1
L_8037ECFC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8037ED64
L_8037ED10:
    lwz 3, 0x4c(5)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8037ED50
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8037ED50
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8037ED50
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8037ED50
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8037ED50
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8037ED50
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8037ED54
L_8037ED50:
    li 0, 0x1
L_8037ED54:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8037ED64:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8037ED88
    mr 3, 30
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8037ED88
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8037ED88
    .4byte 0x48000008 # b .L_8037ED8C
L_8037ED88:
    mr 3, 30
L_8037ED8C:
    rlwinm. 0, 31, 0, 29, 29
    clrlwi 4, 31, 16
    .4byte 0x4082000C # bne .L_8037EDA0
    rlwinm. 0, 4, 0, 30, 30
    .4byte 0x4182000C # beq .L_8037EDA8
L_8037EDA0:
    li 3, 0x1
    .4byte 0x480000D4 # b .L_8037EE78
L_8037EDA8:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(4)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8037EDC0
    bl fn_802308E0
    .4byte 0x480000BC # b .L_8037EE78
L_8037EDC0:
    addi 29, 1, 0x8
    li 28, 0x0
    mr 31, 29
    li 27, 0x0
    li 26, 0x0
    li 30, -0x1
L_8037EDD8:
    stw 30, 0x0(31)
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8037EDF8
    stw 26, 0x0(31)
    addi 28, 28, 0x1
L_8037EDF8:
    addi 26, 26, 0x1
    addi 31, 31, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FFD4 # blt .L_8037EDD8
    li 26, 0x0
    mr 30, 29
L_8037EE10:
    lwz 3, 0x0(30)
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_8037EE30
    bl fn_802300EC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_8037EE30
    addi 27, 27, 0x1
L_8037EE30:
    addi 26, 26, 0x1
    addi 30, 30, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FFD4 # blt .L_8037EE10
    cmpw 28, 27
    .4byte 0x4182000C # beq .L_8037EE50
    li 3, 0x0
    .4byte 0x4800002C # b .L_8037EE78
L_8037EE50:
    li 26, 0x0
L_8037EE54:
    lwz 3, 0x0(29)
    cmpwi 3, 0x0
    .4byte 0x41800008 # blt .L_8037EE64
    bl fn_80230AD4
L_8037EE64:
    addi 26, 26, 0x1
    addi 29, 29, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FFE4 # blt .L_8037EE54
    li 3, 0x1
L_8037EE78:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8037EE8C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8037EF00
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8037EEE8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8037EEE8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8037EEE8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8037EEE8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8037EEE8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8037EEEC
L_8037EEE8:
    li 0, 0x1
L_8037EEEC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8037EF54
L_8037EF00:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8037EF40
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8037EF40
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8037EF40
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8037EF40
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8037EF40
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8037EF40
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8037EF44
L_8037EF40:
    li 0, 0x1
L_8037EF44:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8037EF54:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8037EF78
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8037EF78
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8037EF78
    .4byte 0x48000008 # b .L_8037EF7C
L_8037EF78:
    mr 3, 31
L_8037EF7C:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lwz 3, 0x2c(3)
    addi 3, 3, 0x1
    cmpwi 3, 0x3
    .4byte 0x40810008 # ble .L_8037EFA0
    li 3, 0x0
L_8037EFA0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037EFB4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8037F028
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8037F010
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8037F010
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8037F010
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8037F010
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8037F010
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8037F014
L_8037F010:
    li 0, 0x1
L_8037F014:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8037F07C
L_8037F028:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8037F068
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8037F068
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8037F068
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8037F068
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8037F068
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8037F068
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8037F06C
L_8037F068:
    li 0, 0x1
L_8037F06C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8037F07C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8037F0A0
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8037F0A0
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8037F0A0
    .4byte 0x48000008 # b .L_8037F0A4
L_8037F0A0:
    mr 3, 31
L_8037F0A4:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lwz 3, 0x2c(3)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037F0CC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8037F140
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8037F128
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8037F128
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8037F128
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8037F128
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8037F128
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8037F12C
L_8037F128:
    li 0, 0x1
L_8037F12C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8037F194
L_8037F140:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8037F180
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8037F180
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8037F180
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8037F180
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8037F180
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8037F180
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8037F184
L_8037F180:
    li 0, 0x1
L_8037F184:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8037F194:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8037F1B8
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8037F1B8
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8037F1B8
    .4byte 0x48000008 # b .L_8037F1BC
L_8037F1B8:
    mr 3, 31
L_8037F1BC:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    bl fn_80390C6C
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037F1E4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8037F258
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8037F240
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8037F240
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8037F240
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8037F240
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8037F240
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8037F244
L_8037F240:
    li 0, 0x1
L_8037F244:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8037F2AC
L_8037F258:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8037F298
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8037F298
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8037F298
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8037F298
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8037F298
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8037F298
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8037F29C
L_8037F298:
    li 0, 0x1
L_8037F29C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8037F2AC:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8037F2D0
    mr 3, 31
    bl fn_8022F340
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8037F2D0
    cmpwi 3, 0x4
    .4byte 0x40800008 # bge .L_8037F2D0
    .4byte 0x48000008 # b .L_8037F2D4
L_8037F2D0:
    mr 3, 31
L_8037F2D4:
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x114(3)
    lbz 3, 0x24(3)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8037F2FC:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stfd 28, 0x50(1)
    psq_st 28, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    fmr 29, 1
    fmr 30, 2
    mr 30, 4
    lbz 0, 0xe4(7)
    fmr 28, 3
    fmr 31, 4
    cmplwi 0, 0x0
    mr 31, 5
    mr 29, 6
    .4byte 0x408201E4 # bne .L_8037F540
    lwz 0, 0x3c(7)
    cmplw 0, 3
    .4byte 0x41820034 # beq .L_8037F39C
    stw 3, 0x3c(7)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 3, 0x4(3)
    bl fn_8009F0D0
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    lwz 4, 0x3c(4)
    bl fn_803832BC
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stfs 1, 0x6c(3)
L_8037F39C:
    .4byte 0xC0020130 # lfs f0, lbl_805430D0@sda21(r0)
    lis 3, 0x4330
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    fdivs 5, 28, 0
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    stfs 28, 0x1c(1)
    lwz 4, 0x4(4)
    lwz 0, 0x1c(1)
    lhz 4, 0x4(4)
    xoris 4, 4, 0x8000
    stfs 31, 0x20(1)
    lfs 0, 0x6c(5)
    stw 0, 0x14(1)
    lwz 0, 0x20(1)
    fmuls 4, 0, 5
    stw 4, 0x2c(1)
    .4byte 0xC8620138 # lfd f3, lbl_805430D8@sda21(r0)
    stw 3, 0x28(1)
    lfs 1, 0x14(1)
    lfd 2, 0x28(1)
    .4byte 0xC0020128 # lfs f0, lbl_805430C8@sda21(r0)
    fsubs 2, 2, 3
    stw 0, 0x18(1)
    fcmpo cr0, 1, 0
    lwz 3, 0x4(5)
    lfs 3, 0x18(1)
    fadds 2, 4, 2
    .4byte 0x40810008 # ble .L_8037F410
    .4byte 0x48000008 # b .L_8037F414
L_8037F410:
    fmr 1, 0
L_8037F414:
    .4byte 0xC0020128 # lfs f0, lbl_805430C8@sda21(r0)
    stfs 1, 0x11c(3)
    fcmpo cr0, 3, 0
    .4byte 0x40810008 # ble .L_8037F428
    .4byte 0x48000008 # b .L_8037F42C
L_8037F428:
    fmr 3, 0
L_8037F42C:
    lwz 5, 0x0(29)
    stfs 3, 0x120(3)
    stw 5, 0x10(1)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lbz 3, 0x10(1)
    lwz 6, 0x4(4)
    lbz 0, 0x11(1)
    stb 3, 0x104(6)
    lbz 4, 0x12(1)
    stw 5, 0xc(1)
    lbz 3, 0x13(1)
    stb 0, 0x105(6)
    lbz 0, 0xc(1)
    stb 4, 0x106(6)
    lbz 4, 0xd(1)
    stb 3, 0x107(6)
    lbz 3, 0xe(1)
    stb 0, 0x108(6)
    lbz 0, 0xf(1)
    stb 4, 0x109(6)
    stb 3, 0x10a(6)
    stb 0, 0x10b(6)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stw 5, 0x8(1)
    stw 30, 0x7c(3)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 0, 0x7c(4)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_8037F4C4
    lfs 0, 0x6c(4)
    .4byte 0xC022011C # lfs f1, lbl_805430BC@sda21(r0)
    fmuls 2, 0, 5
    .4byte 0xC0020128 # lfs f0, lbl_805430C8@sda21(r0)
    fnmsubs 1, 2, 1, 29
    stfs 1, 0x70(4)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stfs 0, 0x78(3)
    .4byte 0x48000054 # b .L_8037F514
L_8037F4C4:
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x28(1)
    lwz 3, 0x4(3)
    .4byte 0xC8220138 # lfd f1, lbl_805430D8@sda21(r0)
    lhz 3, 0x4(3)
    stw 0, 0x30(1)
    xoris 0, 3, 0x8000
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    stfs 0, 0x70(4)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x7c(3)
    xoris 0, 0, 0x8000
    stw 0, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    stfs 0, 0x78(3)
L_8037F514:
    .4byte 0xC002011C # lfs f0, lbl_805430BC@sda21(r0)
    li 0, 0x1
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    li 3, 0x1
    fnmsubs 0, 31, 0, 30
    stfs 0, 0x74(4)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    stb 31, 0xe5(4)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    stb 0, 0xe4(4)
    .4byte 0x48000008 # b .L_8037F544
L_8037F540:
    li 3, 0x0
L_8037F544:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 0, 0x94(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

