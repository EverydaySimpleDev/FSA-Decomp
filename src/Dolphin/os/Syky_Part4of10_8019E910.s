# SYKY cluster, part 4/10 (756B). update() dispatcher - routes to 3
# private state handlers (fn_8019EC04/fn_8019EE74/fn_8019F3AC, landed
# alongside) plus the confirmed ease primitive fn_801F71A4.
.section extab, "a"
.balign 4
.global etb_800078FC
etb_800078FC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800078FC, 8

.section extabindex, "a"
.balign 4
.global eti_800146F8
eti_800146F8:
    .4byte fn_8019E910
    .4byte 0x000002F4
    .4byte etb_800078FC
.size eti_800146F8, 12

.text
.balign 4
.global fn_8019E910

fn_8019E910:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 0, 0x268(3)
    cmpwi 0, 0x3
    .4byte 0x41820034 # beq .L_8019E960
    .4byte 0x40800014 # bge .L_8019E944
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8019E950
    .4byte 0x4080001C # bge .L_8019E958
    .4byte 0x480002B0 # b .L_8019EBF0
L_8019E944:
    cmpwi 0, 0x5
    .4byte 0x408002A8 # bge .L_8019EBF0
    .4byte 0x4800001C # b .L_8019E968
L_8019E950:
    bl fn_8019F3AC
    .4byte 0x4800029C # b .L_8019EBF0
L_8019E958:
    bl fn_8019EE74
    .4byte 0x48000294 # b .L_8019EBF0
L_8019E960:
    bl fn_8019EC04
    .4byte 0x4800028C # b .L_8019EBF0
L_8019E968:
    lfs 1, 0x2a0(31)
    addi 3, 31, 0x3c
    .4byte 0xC042B4CC # lfs f2, lbl_8053E46C@sda21(r0)
    .4byte 0xC062B4C0 # lfs f3, lbl_8053E460@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2a4(31)
    addi 3, 31, 0x40
    .4byte 0xC042B4CC # lfs f2, lbl_8053E46C@sda21(r0)
    .4byte 0xC062B4C0 # lfs f3, lbl_8053E460@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x198(31)
    clrlwi. 0, 0, 31
    .4byte 0x40820018 # bne .L_8019E9D0
    lfs 1, 0x294(31)
    .4byte 0xC002B4D0 # lfs f0, lbl_8053E470@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x294(31)
    .4byte 0x48000014 # b .L_8019E9E0
L_8019E9D0:
    lfs 1, 0x294(31)
    .4byte 0xC002B4D0 # lfs f0, lbl_8053E470@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x294(31)
L_8019E9E0:
    lwz 0, 0x230(31)
    cmpwi 0, 0xc
    .4byte 0x41820130 # beq .L_8019EB18
    .4byte 0x40800010 # bge .L_8019E9FC
    cmpwi 0, 0xb
    .4byte 0x40800014 # bge .L_8019EA08
    .4byte 0x480001CC # b .L_8019EBC4
L_8019E9FC:
    cmpwi 0, 0xe
    .4byte 0x408001C4 # bge .L_8019EBC4
    .4byte 0x48000190 # b .L_8019EB94
L_8019EA08:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC0C2B4C0 # lfs f6, lbl_8053E460@sda21(r0)
    lwz 3, 0xb4(5)
    li 0, 0xc
    .4byte 0xC0E2B4D8 # lfs f7, lbl_8053E478@sda21(r0)
    mullw 3, 3, 4
    .4byte 0xC0A2B4D4 # lfs f5, lbl_8053E474@sda21(r0)
    .4byte 0xC082B4E0 # lfs f4, lbl_8053E480@sda21(r0)
    .4byte 0xC022B4DC # lfs f1, lbl_8053E47C@sda21(r0)
    .4byte 0xC042B4CC # lfs f2, lbl_8053E46C@sda21(r0)
    .4byte 0xC002B4E4 # lfs f0, lbl_8053E484@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x18(1)
    lfs 3, 0x18(1)
    fsubs 3, 3, 6
    fnmsubs 3, 7, 3, 5
    stfs 3, 0x2a0(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(5)
    mullw 3, 3, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x14(1)
    lfs 3, 0x14(1)
    fsubs 3, 3, 6
    fnmsubs 3, 7, 3, 5
    stfs 3, 0x2a4(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(5)
    mullw 3, 3, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x10(1)
    lfs 3, 0x10(1)
    fsubs 3, 3, 6
    fmadds 1, 4, 3, 1
    stfs 1, 0x44(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(5)
    mullw 3, 3, 4
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 1, 1, 6
    fmadds 0, 2, 1, 0
    stfs 0, 0x290(31)
    stw 0, 0x230(31)
    .4byte 0x480000B0 # b .L_8019EBC4
L_8019EB18:
    lfs 1, 0x44(31)
    .4byte 0xC062B4C0 # lfs f3, lbl_8053E460@sda21(r0)
    .4byte 0xC002B4C4 # lfs f0, lbl_8053E464@sda21(r0)
    fsubs 1, 1, 3
    stfs 1, 0x44(31)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082008C # bne .L_8019EBC4
    stfs 0, 0x14(31)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC042B4E8 # lfs f2, lbl_8053E488@sda21(r0)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    li 0, 0xd
    .4byte 0xC002B4D4 # lfs f0, lbl_8053E474@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 3
    fmadds 0, 2, 1, 0
    stfs 0, 0x44(31)
    stw 0, 0x230(31)
    .4byte 0x48000034 # b .L_8019EBC4
L_8019EB94:
    lfs 2, 0x44(31)
    .4byte 0xC022B4C0 # lfs f1, lbl_8053E460@sda21(r0)
    .4byte 0xC002B4C4 # lfs f0, lbl_8053E464@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_8019EBC4
    stfs 0, 0x14(31)
    li 0, 0x0
    stb 0, 0x11c(31)
L_8019EBC4:
    .4byte 0xC022B4C0 # lfs f1, lbl_8053E460@sda21(r0)
    addi 3, 31, 0x298
    .4byte 0xC042B4CC # lfs f2, lbl_8053E46C@sda21(r0)
    .4byte 0xC062B4E0 # lfs f3, lbl_8053E480@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x298(31)
    .4byte 0xC002B4C0 # lfs f0, lbl_8053E460@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8019EBF0
    li 0, 0x0
    stb 0, 0x11c(31)
L_8019EBF0:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

