.section extab, "a"
.balign 4
.global etb_80008138
etb_80008138:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008138, 8

.global etb_80008140
etb_80008140:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008140, 8

.global etb_80008148
etb_80008148:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008148, 8

.global etb_80008150
etb_80008150:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008150, 8

.global etb_80008158
etb_80008158:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008158, 8

.global etb_80008160
etb_80008160:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008160, 8

.section extabindex, "a"
.balign 4
.global eti_800152F8
eti_800152F8:
    .4byte fn_801C6784
    .4byte 0x000000A4
    .4byte etb_80008138
.size eti_800152F8, 12

.global eti_80015304
eti_80015304:
    .4byte fn_801C6828
    .4byte 0x00000224
    .4byte etb_80008140
.size eti_80015304, 12

.global eti_80015310
eti_80015310:
    .4byte fn_801C6A4C
    .4byte 0x0000015C
    .4byte etb_80008148
.size eti_80015310, 12

.global eti_8001531C
eti_8001531C:
    .4byte fn_801C6BA8
    .4byte 0x000000D4
    .4byte etb_80008150
.size eti_8001531C, 12

.global eti_80015328
eti_80015328:
    .4byte fn_801C6C7C
    .4byte 0x0000031C
    .4byte etb_80008158
.size eti_80015328, 12

.global eti_80015334
eti_80015334:
    .4byte fn_801C6F98
    .4byte 0x00000224
    .4byte etb_80008160
.size eti_80015334, 12

.text
.balign 4
.global fn_801C6784
.global fn_801C6828
.global fn_801C6A4C
.global fn_801C6BA8
.global fn_801C6C7C
.global fn_801C6F98

fn_801C6784:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 31, 0x4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182004C # beq .L_801C6800
    lwz 4, 0x4(30)
    addi 3, 30, 0xc
    bl fn_801CC9F8
    clrlwi. 0, 3, 24
    .4byte 0x40820038 # bne .L_801C6800
    lwz 0, 0x590(30)
    lfs 1, 0xc(30)
    mulli 3, 0, 0xc
    addi 0, 3, 0x1ac
    lfsx 0, 30, 0
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801C67F4
    li 0, 0x4000
    sth 0, 0x33c(30)
    .4byte 0x48000020 # b .L_801C6810
L_801C67F4:
    li 0, -0x4000
    sth 0, 0x33c(30)
    .4byte 0x48000014 # b .L_801C6810
L_801C6800:
    lwz 4, 0x590(30)
    mr 3, 30
    bl fn_801D0280
    sth 3, 0x33c(30)
L_801C6810:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C6828:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C81D0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C81D0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C6878
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_801C6878:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C68B0
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_801C68B0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C68E8
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_801C68E8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C6920
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_801C6920:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C6958
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_801C6958:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C6990
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_801C6990:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C69C8
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_801C69C8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C6A00
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_801C6A00:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C6A38
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_801C6A38:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C6A4C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 0, 0x340(3)
    cmpwi 0, 0x9
    .4byte 0x40820070 # bne .L_801C6ADC
    lwz 0, 0x354(31)
    rlwinm. 0, 0, 0, 26, 26
    .4byte 0x41820118 # beq .L_801C6B90
    addi 3, 31, 0x340
    li 4, 0x6
    bl fn_800FEB78
    lwz 0, 0x248(31)
    cmpwi 0, 0x26
    .4byte 0x41820040 # beq .L_801C6AD0
    .4byte 0x408000FC # bge .L_801C6B90
    cmpwi 0, 0x25
    .4byte 0x40800008 # bge .L_801C6AA4
    .4byte 0x480000F0 # b .L_801C6B90
L_801C6AA4:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xcf
    li 5, 0x0
    bl fn_801F0E34
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xcd
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000C4 # b .L_801C6B90
L_801C6AD0:
    .4byte 0xC002BF10 # lfs f0, lbl_8053EEB0@sda21(r0)
    stfs 0, 0x258(31)
    .4byte 0x480000B8 # b .L_801C6B90
L_801C6ADC:
    lwz 3, 0x354(31)
    rlwinm. 0, 3, 0, 26, 26
    .4byte 0x41820020 # beq .L_801C6B04
    rlwinm 3, 3, 0, 27, 25
    li 0, 0x3
    stw 3, 0x354(31)
    stb 0, 0x34d(31)
    lbz 3, 0x594(31)
    addi 0, 3, 0x1
    stb 0, 0x594(31)
L_801C6B04:
    lwz 0, 0x248(31)
    li 30, 0x5
    cmpwi 0, 0x26
    .4byte 0x40820068 # bne .L_801C6B78
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xd0
    li 30, 0x14
    li 5, 0x0
    bl fn_801F0E34
    lwz 4, 0x338(31)
    cmpwi 4, 0x0
    .4byte 0x41800044 # blt .L_801C6B78
    mr 3, 31
    bl fn_801CAED4
    clrlwi. 0, 3, 24
    .4byte 0x40820034 # bne .L_801C6B78
    lwz 4, 0x338(31)
    mr 3, 31
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801C6B78
    lwz 4, 0x338(31)
    mr 3, 31
    bl fn_801D0280
    mr 4, 3
    addi 3, 31, 0x33c
    li 5, 0x500
    bl fn_801CD930
L_801C6B78:
    lbz 0, 0x594(31)
    cmpw 0, 30
    .4byte 0x41800010 # blt .L_801C6B90
    mr 3, 31
    li 4, 0x28
    bl fn_801C3B7C
L_801C6B90:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C6BA8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 4, 0x354(3)
    rlwinm. 0, 4, 0, 26, 26
    .4byte 0x418200A4 # beq .L_801C6C68
    lwz 0, 0x340(31)
    cmpwi 0, 0x3
    .4byte 0x4182005C # beq .L_801C6C2C
    .4byte 0x40800010 # bge .L_801C6BE4
    cmpwi 0, 0x2
    .4byte 0x4080005C # bge .L_801C6C38
    .4byte 0x48000088 # b .L_801C6C68
L_801C6BE4:
    cmpwi 0, 0x9
    .4byte 0x41820008 # beq .L_801C6BF0
    .4byte 0x4800007C # b .L_801C6C68
L_801C6BF0:
    addi 3, 31, 0x340
    li 4, 0x3
    bl fn_800FEB78
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xc6
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC002BF14 # lfs f0, lbl_8053EEB4@sda21(r0)
    stfs 0, 0x258(31)
    stfs 0, 0x254(31)
    lwz 3, 0x98(31)
    bl fn_801F6874
    sth 3, 0x33c(31)
    .4byte 0x48000040 # b .L_801C6C68
L_801C6C2C:
    li 4, 0x27
    bl fn_801C3B7C
    .4byte 0x48000034 # b .L_801C6C68
L_801C6C38:
    rlwinm 4, 4, 0, 27, 25
    li 0, 0x0
    stw 4, 0x354(31)
    stb 0, 0x34d(31)
    lbz 4, 0x594(31)
    addi 0, 4, 0x1
    stb 0, 0x594(31)
    lbz 0, 0x594(31)
    cmplwi 0, 0x2
    .4byte 0x4180000C # blt .L_801C6C68
    li 4, 0x27
    bl fn_801C3B7C
L_801C6C68:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C6C7C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    mr 30, 3
    lwz 4, 0x24c(3)
    lwz 0, 0x250(3)
    cmpw 4, 0
    .4byte 0x4180000C # blt .L_801C6CB0
    li 31, 0x1
    .4byte 0x48000268 # b .L_801C6F14
L_801C6CB0:
    lwz 4, 0x338(30)
    cmpwi 4, 0x0
    .4byte 0x41800258 # blt .L_801C6F10
    bl fn_801CAED4
    clrlwi. 0, 3, 24
    .4byte 0x4082024C # bne .L_801C6F10
    lwz 4, 0x338(30)
    mr 3, 30
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x41820238 # beq .L_801C6F10
    lwz 4, 0x338(30)
    mr 3, 30
    addi 5, 30, 0xc
    bl fn_801D0DA0
    lwz 0, 0x24c(30)
    cmpwi 0, 0x1
    .4byte 0x408101D8 # ble .L_801C6ECC
    lwz 3, 0x524(30)
    rlwinm. 4, 3, 0, 28, 28
    .4byte 0x418201CC # beq .L_801C6ECC
    lfs 0, 0x5b0(30)
    fmuls 0, 0, 0
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408201B8 # bne .L_801C6ECC
    rlwinm. 0, 3, 0, 26, 26
    .4byte 0x418200AC # beq .L_801C6DC8
    li 3, 0x6
    bl fn_801CD664
    cmpwi 3, 0x0
    .4byte 0x41820014 # beq .L_801C6D40
    .4byte 0x41800088 # blt .L_801C6DB8
    cmpwi 3, 0x3
    .4byte 0x40800080 # bge .L_801C6DB8
    .4byte 0x4800006C # b .L_801C6DA8
L_801C6D40:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BF18 # lfs f1, lbl_8053EEB8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BF1C # lfs f0, lbl_8053EEBC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 2, 0x14(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_801C6D98
    mr 3, 30
    li 4, 0x23
    bl fn_801C3B7C
    .4byte 0x48000180 # b .L_801C6F14
L_801C6D98:
    mr 3, 30
    li 4, 0x24
    bl fn_801C3B7C
    .4byte 0x48000170 # b .L_801C6F14
L_801C6DA8:
    mr 3, 30
    li 4, 0x25
    bl fn_801C3B7C
    .4byte 0x48000160 # b .L_801C6F14
L_801C6DB8:
    mr 3, 30
    li 4, 0x26
    bl fn_801C3B7C
    .4byte 0x48000150 # b .L_801C6F14
L_801C6DC8:
    rlwinm. 0, 3, 0, 27, 27
    .4byte 0x41820090 # beq .L_801C6E5C
    li 3, 0x3
    bl fn_801CD664
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_801C6DE4
    .4byte 0x4800006C # b .L_801C6E4C
L_801C6DE4:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BF18 # lfs f1, lbl_8053EEB8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BF1C # lfs f0, lbl_8053EEBC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 2, 0x10(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_801C6E3C
    mr 3, 30
    li 4, 0x23
    bl fn_801C3B7C
    .4byte 0x480000DC # b .L_801C6F14
L_801C6E3C:
    mr 3, 30
    li 4, 0x24
    bl fn_801C3B7C
    .4byte 0x480000CC # b .L_801C6F14
L_801C6E4C:
    mr 3, 30
    li 4, 0x25
    bl fn_801C3B7C
    .4byte 0x480000BC # b .L_801C6F14
L_801C6E5C:
    cmplwi 4, 0x0
    .4byte 0x418200B4 # beq .L_801C6F14
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BF18 # lfs f1, lbl_8053EEB8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BF1C # lfs f0, lbl_8053EEBC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_801C6EBC
    mr 3, 30
    li 4, 0x23
    bl fn_801C3B7C
    .4byte 0x4800005C # b .L_801C6F14
L_801C6EBC:
    mr 3, 30
    li 4, 0x24
    bl fn_801C3B7C
    .4byte 0x4800004C # b .L_801C6F14
L_801C6ECC:
    .4byte 0xC002BE54 # lfs f0, lbl_8053EDF4@sda21(r0)
    fmuls 0, 0, 0
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801C6EE4
    li 31, 0x1
    .4byte 0x48000034 # b .L_801C6F14
L_801C6EE4:
    mr 3, 30
    bl fn_801D12CC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_801C6EFC
    li 31, 0x1
    .4byte 0x4800001C # b .L_801C6F14
L_801C6EFC:
    mr 3, 30
    addi 4, 30, 0x32c
    bl fn_801D02E0
    sth 3, 0x33c(30)
    .4byte 0x48000008 # b .L_801C6F14
L_801C6F10:
    li 31, 0x1
L_801C6F14:
    clrlwi. 0, 31, 24
    .4byte 0x41820068 # beq .L_801C6F80
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BF18 # lfs f1, lbl_8053EEB8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BF20 # lfs f0, lbl_8053EEC0@sda21(r0)
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
    .4byte 0x40800014 # bge .L_801C6F74
    mr 3, 30
    li 4, 0xf
    bl fn_801C3B7C
    .4byte 0x48000010 # b .L_801C6F80
L_801C6F74:
    mr 3, 30
    li 4, 0x11
    bl fn_801C3B7C
L_801C6F80:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801C6F98:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C82D0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C82D0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C6FE8
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_801C6FE8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C7020
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_801C7020:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C7058
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_801C7058:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C7090
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_801C7090:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C70C8
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_801C70C8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C7100
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_801C7100:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C7138
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_801C7138:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C7170
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_801C7170:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C71A8
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_801C71A8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_801C6828
    .4byte fn_801C6F98
