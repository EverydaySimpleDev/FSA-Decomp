# Second actor found via the dispatch-table cross-check (see
# project_fsa_dispatch_crosscheck_discovery.md). 9-function bundle
# (0x802A6A4C-0x802A7F58, ~5.1KB), Track A. Vtable body for a real FourCC
# actor (vtable lbl_804A7F38) whose ctor is already landed. Confirmed
# custom slots: dtor (fn_802A6A4C), +0xc (fn_802A7978), +0x10
# (fn_802A75F4, NOT the shared default here), update (fn_802A6BC4) - the
# rest of the vtable uses the confirmed universal shared-Actor-default
# methods. fn_802A6AAC/802A6BC0/802A7D3C/802A7D40 are non-vtable helpers
# landed alongside for contiguity (100% byte-contiguous from this dtor to
# the next actor's dtor). Needs -mgekko (uses psq_l/psq_st).
.section extab, "a"
.balign 4
.global etb_8000C48C
etb_8000C48C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C48C, 8

.global etb_8000C494
etb_8000C494:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000C494, 8

.global etb_8000C49C
etb_8000C49C:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_8000C49C, 8

.global etb_8000C4A4
etb_8000C4A4:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000C4A4, 8

.global etb_8000C4AC
etb_8000C4AC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000C4AC, 8

.global etb_8000C4B4
etb_8000C4B4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C4B4, 8

.global etb_8000C4BC
etb_8000C4BC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C4BC, 8

.section extabindex, "a"
.balign 4
.global eti_8001B07C
eti_8001B07C:
    .4byte fn_802A6A4C
    .4byte 0x00000060
    .4byte etb_8000C48C
.size eti_8001B07C, 12

.global eti_8001B088
eti_8001B088:
    .4byte fn_802A6AAC
    .4byte 0x00000114
    .4byte etb_8000C494
.size eti_8001B088, 12

.global eti_8001B094
eti_8001B094:
    .4byte fn_802A6BC4
    .4byte 0x00000A30
    .4byte etb_8000C49C
.size eti_8001B094, 12

.global eti_8001B0A0
eti_8001B0A0:
    .4byte fn_802A75F4
    .4byte 0x00000384
    .4byte etb_8000C4A4
.size eti_8001B0A0, 12

.global eti_8001B0AC
eti_8001B0AC:
    .4byte fn_802A7978
    .4byte 0x000001A0
    .4byte etb_8000C4AC
.size eti_8001B0AC, 12

.global eti_8001B0B8
eti_8001B0B8:
    .4byte fn_802A7B18
    .4byte 0x00000224
    .4byte etb_8000C4B4
.size eti_8001B0B8, 12

.global eti_8001B0C4
eti_8001B0C4:
    .4byte fn_802A7D40
    .4byte 0x00000218
    .4byte etb_8000C4BC
.size eti_8001B0C4, 12

.text
.balign 4
.global fn_802A6A4C
.global fn_802A6AAC
.global fn_802A6BC0
.global fn_802A6BC4
.global fn_802A75F4
.global fn_802A7978
.global fn_802A7B18
.global fn_802A7D3C
.global fn_802A7D40

fn_802A6A4C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802A6A90
    lis 5, lbl_804A7F38@ha
    li 4, 0x0
    addi 0, 5, lbl_804A7F38@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802A6A90
    mr 3, 30
    bl dtor_80084580
L_802A6A90:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802A6AAC:
    stwu 1, -0x10(1)
    mflr 0
    mr 7, 3
    stw 0, 0x14(1)
    lhz 0, 0x258(3)
    cmpwi 0, 0x50
    .4byte 0x4182009C # beq .L_802A6B60
    .4byte 0x40800040 # bge .L_802A6B08
    cmpwi 0, 0x41
    .4byte 0x41820074 # beq .L_802A6B44
    .4byte 0x40800028 # bge .L_802A6AFC
    cmpwi 0, 0x13
    .4byte 0x418200D4 # beq .L_802A6BB0
    .4byte 0x40800010 # bge .L_802A6AF0
    cmpwi 0, 0x12
    .4byte 0x4080005C # bge .L_802A6B44
    .4byte 0x480000C4 # b .L_802A6BB0
L_802A6AF0:
    cmpwi 0, 0x15
    .4byte 0x408000BC # bge .L_802A6BB0
    .4byte 0x48000084 # b .L_802A6B7C
L_802A6AFC:
    cmpwi 0, 0x43
    .4byte 0x41820060 # beq .L_802A6B60
    .4byte 0x480000AC # b .L_802A6BB0
L_802A6B08:
    cmpwi 0, 0x69
    .4byte 0x418200A4 # beq .L_802A6BB0
    .4byte 0x4080001C # bge .L_802A6B2C
    cmpwi 0, 0x52
    .4byte 0x41820064 # beq .L_802A6B7C
    .4byte 0x41800094 # blt .L_802A6BB0
    cmpwi 0, 0x68
    .4byte 0x40800020 # bge .L_802A6B44
    .4byte 0x48000088 # b .L_802A6BB0
L_802A6B2C:
    cmpwi 0, 0x15a
    .4byte 0x41820068 # beq .L_802A6B98
    .4byte 0x4080007C # bge .L_802A6BB0
    cmpwi 0, 0x6b
    .4byte 0x40800074 # bge .L_802A6BB0
    .4byte 0x48000020 # b .L_802A6B60
L_802A6B44:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 4
    lwz 6, 0x4(7)
    addi 4, 7, 0xc
    li 7, 0x13
    bl fn_802A3948
    .4byte 0x48000054 # b .L_802A6BB0
L_802A6B60:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 4
    lwz 6, 0x4(7)
    addi 4, 7, 0xc
    li 7, 0x51
    bl fn_802A3948
    .4byte 0x48000038 # b .L_802A6BB0
L_802A6B7C:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 4
    lwz 6, 0x4(7)
    addi 4, 7, 0xc
    li 7, 0x15
    bl fn_802A3948
    .4byte 0x4800001C # b .L_802A6BB0
L_802A6B98:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 4
    lwz 6, 0x4(7)
    addi 4, 7, 0xc
    li 7, 0x360
    bl fn_802A3948
L_802A6BB0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802A6BC0:
    blr

fn_802A6BC4:
    stwu 1, -0x50(1)
    mflr 0
    lis 4, 0x5442
    .4byte 0xC022D850 # lfs f1, lbl_805407F0@sda21(r0)
    stw 0, 0x54(1)
    addi 4, 4, 0x4f32
    li 5, -0x1
    stmw 25, 0x34(1)
    mr 29, 3
    lfs 6, 0x10(3)
    lfs 2, 0xc(3)
    lfs 0, 0x60(3)
    stfs 0, 0x8(1)
    fadds 4, 0, 2
    lfs 0, 0x64(3)
    stfs 0, 0xc(1)
    fadds 3, 0, 6
    lfs 0, 0x68(3)
    stfs 0, 0x10(1)
    fadds 2, 0, 2
    lfs 5, 0x6c(3)
    fadds 0, 5, 6
    stfs 5, 0x14(1)
    stfs 4, 0x8(1)
    stfs 3, 0xc(1)
    stfs 2, 0x10(1)
    stfs 0, 0x14(1)
    bl fn_801F8108
    cmpwi 3, 0x0
    .4byte 0x408009A8 # bge .L_802A75E0
    lwz 4, 0x4(29)
    addi 3, 1, 0x8
    .4byte 0xC022D854 # lfs f1, lbl_805407F4@sda21(r0)
    li 5, 0x1
    bl fn_8023AF14
    lwz 0, 0x234(29)
    mr 31, 3
    li 30, 0x0
    li 27, -0x1
    cmpwi 0, 0x7
    .4byte 0x418200B0 # beq .L_802A6D14
    lis 4, 0x414d
    .4byte 0xC022D850 # lfs f1, lbl_805407F0@sda21(r0)
    mr 3, 29
    li 5, -0x1
    addi 4, 4, 0x4f53
    bl fn_801F8108
    mr. 27, 3
    .4byte 0x40800090 # bge .L_802A6D14
    lis 4, 0x4252
    .4byte 0xC022D850 # lfs f1, lbl_805407F0@sda21(r0)
    mr 3, 29
    li 5, -0x1
    addi 4, 4, 0x424c
    bl fn_801F8108
    mr. 27, 3
    li 30, 0x1
    .4byte 0x4080006C # bge .L_802A6D14
    lis 4, 0x424c
    .4byte 0xC022D850 # lfs f1, lbl_805407F0@sda21(r0)
    mr 3, 29
    li 5, -0x1
    addi 4, 4, 0x434b
    bl fn_801F8108
    mr. 27, 3
    li 30, 0x2
    .4byte 0x40800048 # bge .L_802A6D14
    lis 4, 0x4243
    .4byte 0xC022D850 # lfs f1, lbl_805407F0@sda21(r0)
    mr 3, 29
    li 5, -0x1
    addi 4, 4, 0x4b32
    bl fn_801F8108
    mr. 27, 3
    li 30, 0x3
    .4byte 0x40800024 # bge .L_802A6D14
    lis 4, 0x534d
    .4byte 0xC022D858 # lfs f1, lbl_805407F8@sda21(r0)
    mr 3, 29
    li 5, -0x1
    addi 4, 4, 0x5249
    bl fn_801F8108
    li 30, 0x4
    mr 27, 3
L_802A6D14:
    cmpwi 31, 0x0
    .4byte 0x41800058 # blt .L_802A6D70
    lwz 0, 0x234(29)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_802A6D30
    cmpwi 0, 0x3
    .4byte 0x40820044 # bne .L_802A6D70
L_802A6D30:
    mr 3, 31
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    lfs 3, 0x8(3)
    psq_st 0, 0x18(1), 0, 0
    lfs 2, 0xc(29)
    lfs 1, 0x18(1)
    .4byte 0xC002D85C # lfs f0, lbl_805407FC@sda21(r0)
    fsubs 1, 2, 1
    stfs 3, 0x20(1)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_802A6D6C
    .4byte 0xC002D860 # lfs f0, lbl_80540800@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41800008 # blt .L_802A6D70
L_802A6D6C:
    li 31, -0x1
L_802A6D70:
    lwz 0, 0x230(29)
    cmplwi 0, 0x8
    .4byte 0x41810868 # bgt .L_802A75E0
    lis 3, jumptable_804A7F90@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A7F90@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    mr 3, 29
    lwz 12, 0x0(29)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_802A6E00
    lwz 4, 0x4(29)
    addi 3, 29, 0xc
    bl fn_80226AE0
    stw 3, 0x244(29)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x4(29)
    lwz 3, 0x20(3)
    lwz 5, 0x244(29)
    bl fn_802F9908
    clrlwi 0, 3, 22
    mr 3, 29
    sth 0, 0x258(29)
    mr 4, 31
    lwz 12, 0x0(29)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0x11c(29)
    .4byte 0x480007E4 # b .L_802A75E0
L_802A6E00:
    lwz 4, 0x4(29)
    addi 3, 29, 0xc
    bl fn_80226AE0
    stw 3, 0x244(29)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x4(29)
    lwz 3, 0x20(3)
    lwz 5, 0x244(29)
    bl fn_802F9908
    clrlwi 0, 3, 22
    sth 0, 0x258(29)
    lhz 0, 0x258(29)
    cmplwi 0, 0x12
    .4byte 0x4182002C # beq .L_802A6E60
    cmplwi 0, 0x50
    .4byte 0x41820024 # beq .L_802A6E60
    cmplwi 0, 0x14
    .4byte 0x4182001C # beq .L_802A6E60
    cmplwi 0, 0x52
    .4byte 0x41820014 # beq .L_802A6E60
    cmplwi 0, 0x15a
    .4byte 0x4182000C # beq .L_802A6E60
    cmplwi 0, 0x41
    .4byte 0x40820784 # bne .L_802A75E0
L_802A6E60:
    li 0, 0x2
    stw 0, 0x230(29)
    .4byte 0x48000778 # b .L_802A75E0
    cmpwi 31, 0x0
    .4byte 0x418002D0 # blt .L_802A7140
    lwz 0, 0x234(29)
    cmpwi 0, 0x4
    .4byte 0x4182029C # beq .L_802A7118
    cmpwi 0, 0x7
    .4byte 0x41820294 # beq .L_802A7118
    mr 3, 31
    bl fn_8023513C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820748 # beq .L_802A75E0
    mr 3, 31
    bl fn_802353AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820734 # beq .L_802A75E0
    mr 3, 31
    bl fn_80233DA4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820720 # beq .L_802A75E0
    mr 3, 31
    bl fn_80235004
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4182070C # beq .L_802A75E0
    mr 3, 29
    lwz 12, 0x0(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    bl GetRoomConfigRecord
    mr 4, 30
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x408201F0 # bne .L_802A70F0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082010C # bne .L_802A701C
    li 26, 0x0
    bl SpatialRegistry_GetBase
    lwz 30, 0x1008(3)
    li 25, 0x0
    li 27, 0x0
    .4byte 0x4800006C # b .L_802A6F94
L_802A6F2C:
    bl SpatialRegistry_GetBase
    addi 0, 27, 0x8
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x41820050 # beq .L_802A6F8C
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x5357
    cmplwi 0, 0x5448
    .4byte 0x40820040 # bne .L_802A6F8C
    lwz 3, 0x198(4)
    lwz 0, 0x198(29)
    cmpw 3, 0
    .4byte 0x41820030 # beq .L_802A6F8C
    lwz 28, 0x90(4)
    bl GetRoomConfigRecord
    srwi 4, 28, 27
    bl fn_802D7E1C
    cmpw 31, 3
    .4byte 0x40820018 # bne .L_802A6F8C
    clrlwi. 0, 28, 26
    .4byte 0x4182000C # beq .L_802A6F88
    cmplwi 0, 0x5
    .4byte 0x40820008 # bne .L_802A6F8C
L_802A6F88:
    li 26, 0x1
L_802A6F8C:
    addi 27, 27, 0x4
    addi 25, 25, 0x1
L_802A6F94:
    cmpw 25, 30
    .4byte 0x4180FF94 # blt .L_802A6F2C
    clrlwi. 0, 26, 24
    .4byte 0x40820640 # bne .L_802A75E0
    mr 3, 31
    li 4, 0xa
    bl fn_8022E39C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820628 # bne .L_802A75E0
    mr 3, 29
    clrlwi 4, 31, 24
    lwz 12, 0x0(29)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x9
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 29
    mr 4, 31
    lwz 12, 0x0(29)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    li 3, 0x3
    li 0, 0x5
    stw 3, 0x230(29)
    stw 0, 0x248(29)
    stw 31, 0x250(29)
    .4byte 0x480005C8 # b .L_802A75E0
L_802A701C:
    cmpwi 31, 0x0
    .4byte 0x40820070 # bne .L_802A7090
    mr 3, 31
    li 4, 0x5
    bl fn_8022E39C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200A8 # bne .L_802A70E0
    mr 3, 29
    clrlwi 4, 31, 24
    lwz 12, 0x0(29)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x9
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 29
    mr 4, 31
    lwz 12, 0x0(29)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    li 0, 0x5
    stw 0, 0x248(29)
    .4byte 0x48000054 # b .L_802A70E0
L_802A7090:
    mr 3, 29
    clrlwi 4, 31, 24
    lwz 12, 0x0(29)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x9
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 29
    mr 4, 31
    lwz 12, 0x0(29)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x248(29)
L_802A70E0:
    li 0, 0x3
    stw 0, 0x230(29)
    stw 31, 0x250(29)
    .4byte 0x480004F4 # b .L_802A75E0
L_802A70F0:
    mr 3, 29
    mr 4, 31
    lwz 12, 0x0(29)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    stw 31, 0x250(29)
    li 0, 0x4
    stw 0, 0x230(29)
    .4byte 0x480004CC # b .L_802A75E0
L_802A7118:
    mr 3, 29
    clrlwi 4, 31, 24
    lwz 12, 0x0(29)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x6
    stw 0, 0x230(29)
    .4byte 0x480004A4 # b .L_802A75E0
L_802A7140:
    cmpwi 27, 0x0
    .4byte 0x4180049C # blt .L_802A75E0
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820488 # beq .L_802A75E0
    lis 4, lbl_8046C838@ha
    slwi 5, 30, 2
    addi 4, 4, lbl_8046C838@l
    lwz 0, 0x1a0(3)
    lwzx 3, 4, 5
    cmplw 3, 0
    .4byte 0x4082046C # bne .L_802A75E0
    li 0, -0x1
    mr 3, 29
    stw 0, 0x250(29)
    li 4, 0xff
    li 5, 0x1
    stw 30, 0x254(29)
    lwz 12, 0x0(29)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x9
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 29
    lwz 4, 0x250(29)
    lwz 12, 0x0(29)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    li 3, 0x7
    li 0, 0xa
    stw 3, 0x230(29)
    stw 0, 0x248(29)
    .4byte 0x48000404 # b .L_802A75E0
    lwz 3, 0x250(29)
    li 4, 0xe8
    li 5, 0xff
    bl fn_802302C4
    lwz 3, 0x248(29)
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_802A7208
    li 0, 0x4
    stw 0, 0x230(29)
    .4byte 0x4800000C # b .L_802A7210
L_802A7208:
    subi 0, 3, 0x1
    stw 0, 0x248(29)
L_802A7210:
    lwz 0, 0x248(29)
    cmpwi 0, 0x2
    .4byte 0x408203C8 # bne .L_802A75E0
    lwz 0, 0x234(29)
    cmpwi 0, 0x2
    .4byte 0x41820014 # beq .L_802A7238
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802A7238
    cmpwi 0, 0x6
    .4byte 0x408203AC # bne .L_802A75E0
L_802A7238:
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x9
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000394 # b .L_802A75E0
    cmpwi 31, 0x0
    .4byte 0x408001AC # bge .L_802A7400
    lwz 3, 0x250(29)
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082037C # bne .L_802A75E0
    mr 3, 29
    lwz 12, 0x0(29)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_802A72A4
    lwz 0, 0x234(29)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_802A7298
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_802A72A4
L_802A7298:
    li 0, 0x0
    stb 0, 0x11c(29)
    .4byte 0x48000340 # b .L_802A75E0
L_802A72A4:
    lwz 0, 0x234(29)
    cmpwi 0, 0x8
    .4byte 0x40820018 # bne .L_802A72C4
    li 0, 0x5
    stw 0, 0x230(29)
    lwz 0, 0x240(29)
    stw 0, 0x24c(29)
    .4byte 0x48000320 # b .L_802A75E0
L_802A72C4:
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_802A72D4
    cmpwi 0, 0x5
    .4byte 0x408200C4 # bne .L_802A7394
L_802A72D4:
    lwz 27, 0x264(29)
    cmpwi 27, 0x0
    .4byte 0x41800024 # blt .L_802A7300
    bl GetRoomConfigRecord
    mr 4, 27
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_802A732C
    li 0, 0x0
    stb 0, 0x11c(29)
    .4byte 0x480002E4 # b .L_802A75E0
L_802A7300:
    lwz 27, 0x260(29)
    cmpwi 27, 0x0
    .4byte 0x41800024 # blt .L_802A732C
    bl GetRoomConfigRecord
    mr 4, 27
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802A732C
    li 0, 0x0
    stb 0, 0x11c(29)
    .4byte 0x480002B8 # b .L_802A75E0
L_802A732C:
    lwz 0, 0x234(29)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_802A7340
    cmpwi 0, 0x5
    .4byte 0x4082003C # bne .L_802A7378
L_802A7340:
    mr 3, 29
    li 4, 0xff
    lwz 12, 0x0(29)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 31
    lwz 6, 0x4(29)
    addi 4, 29, 0xc
    lhz 7, 0x258(29)
    bl fn_802A3884
    .4byte 0x48000080 # b .L_802A73F4
L_802A7378:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 31
    lwz 6, 0x4(29)
    addi 4, 29, 0xc
    lhz 7, 0x258(29)
    bl fn_802A3884
    .4byte 0x48000064 # b .L_802A73F4
L_802A7394:
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_802A73A4
    cmpwi 0, 0x6
    .4byte 0x4082003C # bne .L_802A73DC
L_802A73A4:
    mr 3, 29
    li 4, 0xff
    lwz 12, 0x0(29)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 31
    lwz 6, 0x4(29)
    addi 4, 29, 0xc
    lhz 7, 0x258(29)
    bl fn_802A3884
    .4byte 0x4800001C # b .L_802A73F4
L_802A73DC:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 31
    lwz 6, 0x4(29)
    addi 4, 29, 0xc
    lhz 7, 0x258(29)
    bl fn_802A3884
L_802A73F4:
    li 0, 0x2
    stw 0, 0x230(29)
    .4byte 0x480001E4 # b .L_802A75E0
L_802A7400:
    mr 3, 31
    li 4, 0xe8
    li 5, 0xff
    bl fn_802302C4
    lwz 4, 0x250(29)
    cmpw 31, 4
    .4byte 0x40820038 # bne .L_802A7450
    lwz 0, 0x234(29)
    cmpwi 0, 0x5
    .4byte 0x4182000C # beq .L_802A7430
    cmpwi 0, 0x6
    .4byte 0x408201B4 # bne .L_802A75E0
L_802A7430:
    mr 3, 29
    clrlwi 4, 4, 24
    lwz 12, 0x0(29)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x48000194 # b .L_802A75E0
L_802A7450:
    stw 31, 0x250(29)
    mr 3, 29
    li 5, 0x1
    lwz 12, 0x0(29)
    lwz 0, 0x250(29)
    lwz 12, 0x30(12)
    clrlwi 4, 0, 24
    mtctr 12
    bctrl
    .4byte 0x4800016C # b .L_802A75E0
    lwz 3, 0x24c(29)
    cmpwi 3, 0x0
    .4byte 0x40820044 # bne .L_802A74C4
    mr 3, 29
    li 4, 0xff
    lwz 12, 0x0(29)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 31
    lwz 6, 0x4(29)
    addi 4, 29, 0xc
    lhz 7, 0x258(29)
    bl fn_802A3884
    li 0, 0x2
    stw 0, 0x230(29)
    .4byte 0x48000120 # b .L_802A75E0
L_802A74C4:
    subi 0, 3, 0x1
    stw 0, 0x24c(29)
    .4byte 0x48000114 # b .L_802A75E0
    lwz 3, 0x248(29)
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_802A74E8
    li 0, 0x8
    stw 0, 0x230(29)
    .4byte 0x480000FC # b .L_802A75E0
L_802A74E8:
    subi 0, 3, 0x1
    stw 0, 0x248(29)
    .4byte 0x480000F0 # b .L_802A75E0
    cmpwi 27, 0x0
    .4byte 0x41800014 # blt .L_802A750C
    .4byte 0x418000E4 # blt .L_802A75E0
    lwz 0, 0x254(29)
    cmpw 0, 30
    .4byte 0x418200D8 # beq .L_802A75E0
L_802A750C:
    lwz 0, 0x234(29)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_802A7530
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_802A7530
    cmpwi 0, 0x5
    .4byte 0x4182000C # beq .L_802A7530
    cmpwi 0, 0x8
    .4byte 0x40820068 # bne .L_802A7594
L_802A7530:
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_802A7540
    cmpwi 0, 0x5
    .4byte 0x4082003C # bne .L_802A7578
L_802A7540:
    mr 3, 29
    li 4, 0xff
    lwz 12, 0x0(29)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 29, 0xc
    lwz 5, 0x250(29)
    lwz 6, 0x4(29)
    lhz 7, 0x258(29)
    bl fn_802A3884
    .4byte 0x48000064 # b .L_802A75D8
L_802A7578:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 29, 0xc
    lwz 5, 0x250(29)
    lwz 6, 0x4(29)
    lhz 7, 0x258(29)
    bl fn_802A3884
    .4byte 0x48000048 # b .L_802A75D8
L_802A7594:
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_802A75A4
    cmpwi 0, 0x6
    .4byte 0x40820020 # bne .L_802A75C0
L_802A75A4:
    mr 3, 29
    li 4, 0xff
    lwz 12, 0x0(29)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_802A75C0:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 29, 0xc
    lwz 5, 0x250(29)
    lwz 6, 0x4(29)
    lhz 7, 0x258(29)
    bl fn_802A3884
L_802A75D8:
    li 0, 0x2
    stw 0, 0x230(29)
L_802A75E0:
    lmw 25, 0x34(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802A75F4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x4082033C # bne .L_802A7958
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_802A7688
    lwz 4, 0x4(28)
    addi 3, 28, 0xc
    bl fn_80226AE0
    stw 3, 0x244(28)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x4(28)
    lwz 3, 0x20(3)
    lwz 5, 0x244(28)
    bl fn_802F9908
    clrlwi 0, 3, 22
    mr 3, 28
    sth 0, 0x258(28)
    li 4, -0x1
    lwz 12, 0x0(28)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0x11c(28)
    .4byte 0x480002D4 # b .L_802A7958
L_802A7688:
    lwz 4, 0x4(28)
    addi 3, 28, 0xc
    bl fn_80226AE0
    stw 3, 0x244(28)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x4(28)
    lwz 3, 0x20(3)
    lwz 5, 0x244(28)
    bl fn_802F9908
    clrlwi 0, 3, 22
    sth 0, 0x258(28)
    lhz 3, 0x258(28)
    cmplwi 3, 0x12
    .4byte 0x41820054 # beq .L_802A7710
    cmplwi 3, 0x50
    .4byte 0x4182004C # beq .L_802A7710
    cmplwi 3, 0x52
    .4byte 0x41820044 # beq .L_802A7710
    cmplwi 3, 0x41
    .4byte 0x4182003C # beq .L_802A7710
    cmplwi 3, 0x43
    .4byte 0x41820034 # beq .L_802A7710
    cmplwi 3, 0x68
    .4byte 0x4182002C # beq .L_802A7710
    cmplwi 3, 0x6a
    .4byte 0x41820024 # beq .L_802A7710
    cmplwi 3, 0x15a
    .4byte 0x4182001C # beq .L_802A7710
    subi 0, 3, 0x13
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_802A7710
    cmplwi 3, 0x51
    .4byte 0x4082024C # bne .L_802A7958
L_802A7710:
    li 0, 0x2
    stw 0, 0x230(28)
    lhz 0, 0x258(28)
    cmplwi 0, 0x41
    .4byte 0x4082000C # bne .L_802A772C
    li 0, 0x12
    sth 0, 0x258(28)
L_802A772C:
    lwz 29, 0x264(28)
    cmpwi 29, 0x0
    .4byte 0x408001C8 # bge .L_802A78FC
    bl SpatialRegistry_GetBase
    lwz 31, 0x1008(3)
    li 29, 0x0
    li 30, 0x0
    .4byte 0x4800013C # b .L_802A7884
L_802A774C:
    bl SpatialRegistry_GetBase
    addi 0, 30, 0x8
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x41820120 # beq .L_802A787C
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x5357
    cmplwi 0, 0x5434
    .4byte 0x41820010 # beq .L_802A777C
    subis 0, 3, 0x4c4f
    cmplwi 0, 0x5357
    .4byte 0x40820104 # bne .L_802A787C
L_802A777C:
    lwz 3, 0x170(28)
    lwz 0, 0x170(4)
    cmpw 3, 0
    .4byte 0x408200F4 # bne .L_802A787C
    lwz 4, 0x90(4)
    clrlwi 0, 4, 27
    cmplwi 0, 0x1
    .4byte 0x4182000C # beq .L_802A77A4
    cmplwi 0, 0x2
    .4byte 0x408200DC # bne .L_802A787C
L_802A77A4:
    lis 3, lbl_8046C828@ha
    li 0, 0x4
    addi 5, 3, lbl_8046C828@l
    mtctr 0
L_802A77B4:
    lwz 0, 0x0(5)
    lwz 3, 0x25c(28)
    srw 0, 4, 0
    clrlwi 0, 0, 27
    cmplw 3, 0
    .4byte 0x408200AC # bne .L_802A7874
    srwi 0, 4, 27
    stw 0, 0x260(28)
    bl GetRoomConfigRecord
    lwz 4, 0x260(28)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_802A780C
    mr 3, 28
    li 4, -0x1
    lwz 12, 0x0(28)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0x11c(28)
    .4byte 0x48000074 # b .L_802A787C
L_802A780C:
    lhz 0, 0x258(28)
    cmplwi 0, 0x13
    .4byte 0x4182000C # beq .L_802A7820
    cmplwi 0, 0x51
    .4byte 0x40820060 # bne .L_802A787C
L_802A7820:
    cmplwi 0, 0x13
    .4byte 0x40820010 # bne .L_802A7834
    li 0, 0x12
    sth 0, 0x258(28)
    .4byte 0x4800000C # b .L_802A783C
L_802A7834:
    li 0, 0x51
    sth 0, 0x258(28)
L_802A783C:
    mr 3, 28
    li 4, 0xff
    lwz 12, 0x0(28)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 28, 0xc
    lwz 6, 0x4(28)
    li 5, -0x1
    lhz 7, 0x258(28)
    bl fn_802A3884
    .4byte 0x4800000C # b .L_802A787C
L_802A7874:
    addi 5, 5, 0x4
    .4byte 0x4200FF3C # bdnz .L_802A77B4
L_802A787C:
    addi 30, 30, 0x4
    addi 29, 29, 0x1
L_802A7884:
    cmpw 29, 31
    .4byte 0x4180FEC4 # blt .L_802A774C
    lhz 0, 0x258(28)
    cmplwi 0, 0x43
    .4byte 0x4182001C # beq .L_802A78B0
    cmplwi 0, 0x68
    .4byte 0x41820014 # beq .L_802A78B0
    cmplwi 0, 0x6a
    .4byte 0x4182000C # beq .L_802A78B0
    cmplwi 0, 0x41
    .4byte 0x408200AC # bne .L_802A7958
L_802A78B0:
    mr 3, 28
    lwz 12, 0x0(28)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_802A78F0
    mr 3, 28
    li 4, -0x1
    lwz 12, 0x0(28)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0x11c(28)
    .4byte 0x4800006C # b .L_802A7958
L_802A78F0:
    li 0, 0x1
    stw 0, 0x230(28)
    .4byte 0x48000060 # b .L_802A7958
L_802A78FC:
    bl GetRoomConfigRecord
    mr 4, 29
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_802A7934
    mr 3, 28
    li 4, -0x1
    lwz 12, 0x0(28)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0x11c(28)
    .4byte 0x48000028 # b .L_802A7958
L_802A7934:
    lhz 0, 0x258(28)
    cmplwi 0, 0x43
    .4byte 0x41820014 # beq .L_802A7950
    cmplwi 0, 0x68
    .4byte 0x4182000C # beq .L_802A7950
    cmplwi 0, 0x6a
    .4byte 0x4082000C # bne .L_802A7958
L_802A7950:
    li 0, 0x1
    stw 0, 0x230(28)
L_802A7958:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802A7978:
    stwu 1, -0x20(1)
    lwz 0, 0x90(3)
    extrwi 4, 0, 5, 5
    addi 0, 4, 0x1
    stw 0, 0x238(3)
    lwz 0, 0x90(3)
    extrwi 4, 0, 5, 10
    addi 0, 4, 0x1
    stw 0, 0x23c(3)
    lwz 0, 0x90(3)
    rlwinm 0, 0, 0, 22, 26
    stw 0, 0x240(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 27
    stw 0, 0x234(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 15
    stw 0, 0x264(3)
    lwz 0, 0x264(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802A79D4
    li 0, -0x1
    stw 0, 0x264(3)
L_802A79D4:
    lwz 0, 0x90(3)
    srwi 0, 0, 27
    stw 0, 0x25c(3)
    lwz 0, 0x234(3)
    cmpwi 0, 0x8
    .4byte 0x40820018 # bne .L_802A7A00
    lwz 0, 0x240(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802A7A00
    li 0, 0x3c
    stw 0, 0x240(3)
L_802A7A00:
    lwz 0, 0x240(3)
    .4byte 0xC022D864 # lfs f1, lbl_80540804@sda21(r0)
    stw 0, 0x24c(3)
    lfs 0, 0xc(3)
    fadds 0, 0, 1
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    lwz 0, 0x234(3)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_802A7A38
    cmpwi 0, 0x3
    .4byte 0x40820020 # bne .L_802A7A54
L_802A7A38:
    .4byte 0xC022D868 # lfs f1, lbl_80540808@sda21(r0)
    .4byte 0xC002D86C # lfs f0, lbl_8054080C@sda21(r0)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    .4byte 0x48000084 # b .L_802A7AD4
L_802A7A54:
    cmpwi 0, 0x7
    .4byte 0x40820064 # bne .L_802A7ABC
    lwz 0, 0x238(3)
    lis 4, 0x4330
    lwz 5, 0x23c(3)
    xoris 0, 0, 0x8000
    stw 4, 0x10(1)
    xoris 5, 5, 0x8000
    .4byte 0xC842D878 # lfd f2, lbl_80540818@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xC062D870 # lfs f3, lbl_80540810@sda21(r0)
    lfd 0, 0x10(1)
    stw 5, 0xc(1)
    fsubs 0, 0, 2
    stw 4, 0x8(1)
    lfd 1, 0x8(1)
    fmuls 4, 3, 0
    fsubs 1, 1, 2
    fneg 0, 4
    fmuls 1, 3, 1
    stfs 0, 0x60(3)
    fneg 0, 1
    stfs 0, 0x64(3)
    stfs 4, 0x68(3)
    stfs 1, 0x6c(3)
    .4byte 0x4800001C # b .L_802A7AD4
L_802A7ABC:
    .4byte 0xC022D868 # lfs f1, lbl_80540808@sda21(r0)
    .4byte 0xC002D86C # lfs f0, lbl_8054080C@sda21(r0)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
L_802A7AD4:
    li 0, 0x0
    stw 0, 0x248(3)
    lwz 0, 0x234(3)
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_802A7AF0
    cmpwi 0, 0x7
    .4byte 0x40820010 # bne .L_802A7AFC
L_802A7AF0:
    li 0, 0x2
    stw 0, 0x230(3)
    .4byte 0x4800000C # b .L_802A7B04
L_802A7AFC:
    li 0, 0x1
    stw 0, 0x230(3)
L_802A7B04:
    li 0, -0x1
    stw 0, 0x250(3)
    stw 0, 0x260(3)
    addi 1, 1, 0x20
    blr

fn_802A7B18:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D0C68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D0C68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A7B68
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
L_802A7B68:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A7BA0
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
L_802A7BA0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A7BD8
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
L_802A7BD8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A7C10
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
L_802A7C10:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A7C48
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
L_802A7C48:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A7C80
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
L_802A7C80:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A7CB8
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
L_802A7CB8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A7CF0
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
L_802A7CF0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A7D28
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
L_802A7D28:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802A7D3C:
    blr

fn_802A7D40:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    bl GetRoomConfigRecord
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x418200A4 # beq .L_802A7E04
    .4byte 0x40800014 # bge .L_802A7D78
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_802A7D88
    .4byte 0x40800064 # bge .L_802A7DD4
    .4byte 0x480001A0 # b .L_802A7F14
L_802A7D78:
    cmpwi 0, 0x4
    .4byte 0x41820198 # beq .L_802A7F14
    .4byte 0x40800194 # bge .L_802A7F14
    .4byte 0x48000140 # b .L_802A7EC4
L_802A7D88:
    lwz 4, 0x234(31)
    subi 0, 4, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408201A8 # bne .L_802A7F44
    li 0, 0x1
    stw 0, 0x230(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 24
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_802A7DBC
    .4byte 0x4800018C # b .L_802A7F44
L_802A7DBC:
    lfs 1, 0x10(31)
    lfs 0, 0xd0(3)
    fsubs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    .4byte 0x48000174 # b .L_802A7F44
L_802A7DD4:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820158 # beq .L_802A7F44
    li 3, 0x2
    li 0, 0x1
    stw 3, 0x230(31)
    stw 0, 0x234(31)
    .4byte 0x48000144 # b .L_802A7F44
L_802A7E04:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x408200AC # bne .L_802A7EB8
    lwz 0, 0x238(31)
    cmplwi 0, 0x0
    .4byte 0x4082012C # bne .L_802A7F44
    .4byte 0xC062D880 # lfs f3, lbl_80540820@sda21(r0)
    addi 4, 1, 0x8
    lfs 2, 0x10(31)
    li 5, 0x173
    .4byte 0xC022D884 # lfs f1, lbl_80540824@sda21(r0)
    li 6, 0x1
    lfs 0, 0xc(31)
    fadds 2, 3, 2
    lfs 3, 0x14(31)
    li 7, 0x0
    fadds 0, 1, 0
    .4byte 0xC022D888 # lfs f1, lbl_80540828@sda21(r0)
    stfs 2, 0xc(1)
    li 8, 0x0
    li 9, 0x0
    stfs 0, 0x8(1)
    li 10, 0x1
    stfs 3, 0x10(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x238(31)
    li 0, 0x3
    lis 4, 0x3
    .4byte 0xC022D884 # lfs f1, lbl_80540824@sda21(r0)
    stw 0, 0x230(31)
    mr 3, 31
    .4byte 0xC002D880 # lfs f0, lbl_80540820@sda21(r0)
    addi 4, 4, 0x1
    lfs 2, 0xc(31)
    li 5, 0x0
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    bl fn_801F0E34
    li 0, 0x14
    stw 0, 0x234(31)
    .4byte 0x48000090 # b .L_802A7F44
L_802A7EB8:
    subi 0, 3, 0x1
    stw 0, 0x234(31)
    .4byte 0x48000084 # b .L_802A7F44
L_802A7EC4:
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC022D88C # lfs f1, lbl_8054082C@sda21(r0)
    .4byte 0xC042D890 # lfs f2, lbl_80540830@sda21(r0)
    bl fn_802D79E8
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x6
    bl fn_801F2B7C
    lwz 3, 0x234(31)
    subi 0, 3, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_802A7F44
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48000034 # b .L_802A7F44
L_802A7F14:
    lwz 5, 0x238(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802A7F3C
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x238(31)
L_802A7F3C:
    mr 3, 31
    bl fn_801F3668
L_802A7F44:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_802A7B18

