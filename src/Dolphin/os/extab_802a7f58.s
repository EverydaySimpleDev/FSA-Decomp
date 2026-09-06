# Third AND fourth actors found via the dispatch-table cross-check (see
# project_fsa_dispatch_crosscheck_discovery.md) - landed together since
# they're 100% byte-contiguous, ending exactly at already-landed content
# (extab_802a964c.s). 8-function bundle (0x802A7F58-0x802A964C, ~5.7KB).
# Actor A: vtable lbl_804A7FB8, dtor fn_802A7F58, +0xc fn_802A7FCC, update
# fn_802A7D40 (landed previously as part of extab_802a6a4c.s's contiguity
# tail), rest = confirmed universal defaults.
# Actor B: vtable lbl_804A8010, dtor fn_802A8220, +0xc fn_802A92FC, update
# fn_802A8284 (a large 0x1078-byte function), rest = confirmed universal
# defaults. fn_802A8280/802A9428 are non-vtable helpers/sinit landed
# alongside for contiguity. Needs -mgekko (uses psq_l/psq_st).
.section extab, "a"
.balign 4
.global etb_8000C4C4
etb_8000C4C4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C4C4, 8

.global etb_8000C4CC
etb_8000C4CC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C4CC, 8

.global etb_8000C4D4
etb_8000C4D4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C4D4, 8

.global etb_8000C4DC
etb_8000C4DC:
    .4byte 0x388A0000
    .4byte 0x00000000
.size etb_8000C4DC, 8

.global etb_8000C4E4
etb_8000C4E4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C4E4, 8

.global etb_8000C4EC
etb_8000C4EC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C4EC, 8

.section extabindex, "a"
.balign 4
.global eti_8001B0D0
eti_8001B0D0:
    .4byte fn_802A7F58
    .4byte 0x00000074
    .4byte etb_8000C4C4
.size eti_8001B0D0, 12

.global eti_8001B0DC
eti_8001B0DC:
    .4byte fn_802A7FFC
    .4byte 0x00000224
    .4byte etb_8000C4CC
.size eti_8001B0DC, 12

.global eti_8001B0E8
eti_8001B0E8:
    .4byte fn_802A8220
    .4byte 0x00000060
    .4byte etb_8000C4D4
.size eti_8001B0E8, 12

.global eti_8001B0F4
eti_8001B0F4:
    .4byte fn_802A8284
    .4byte 0x00001078
    .4byte etb_8000C4DC
.size eti_8001B0F4, 12

.global eti_8001B100
eti_8001B100:
    .4byte fn_802A92FC
    .4byte 0x0000012C
    .4byte etb_8000C4E4
.size eti_8001B100, 12

.global eti_8001B10C
eti_8001B10C:
    .4byte fn_802A9428
    .4byte 0x00000224
    .4byte etb_8000C4EC
.size eti_8001B10C, 12

.text
.balign 4
.global fn_802A7F58
.global fn_802A7FCC
.global fn_802A7FFC
.global fn_802A8220
.global fn_802A8280
.global fn_802A8284
.global fn_802A92FC
.global fn_802A9428

fn_802A7F58:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182003C # beq .L_802A7FB0
    lis 3, lbl_804A7FB8@ha
    addi 0, 3, lbl_804A7FB8@l
    stw 0, 0x0(30)
    lwz 3, 0x238(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802A7F94
    bl fn_801EE434
L_802A7F94:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802A7FB0
    mr 3, 30
    bl dtor_80084580
L_802A7FB0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802A7FCC:
    .4byte 0xC022D894 # lfs f1, lbl_80540834@sda21(r0)
    li 4, 0x0
    .4byte 0xC002D898 # lfs f0, lbl_80540838@sda21(r0)
    li 0, 0x14
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stw 4, 0x238(3)
    stw 4, 0x230(3)
    stw 0, 0x234(3)
    blr

fn_802A7FFC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D0D68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D0D68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A804C
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
L_802A804C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A8084
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
L_802A8084:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A80BC
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
L_802A80BC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A80F4
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
L_802A80F4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A812C
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
L_802A812C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A8164
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
L_802A8164:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A819C
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
L_802A819C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A81D4
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
L_802A81D4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A820C
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
L_802A820C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802A8220:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802A8264
    lis 5, lbl_804A8010@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8010@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802A8264
    mr 3, 30
    bl dtor_80084580
L_802A8264:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802A8280:
    blr

fn_802A8284:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stfd 30, 0xb0(1)
    psq_st 30, 0xb8(1), 0, 0
    stmw 25, 0x94(1)
    mr 26, 3
    lwz 27, 0x4(3)
    bl GetRoomConfigRecord
    cmpwi 27, 0x8
    .4byte 0x4080000C # bge .L_802A82C0
    addi 31, 3, 0xcc
    .4byte 0x48000008 # b .L_802A82C4
L_802A82C0:
    addi 31, 3, 0xdc
L_802A82C4:
    lwz 0, 0x230(26)
    cmpwi 0, 0x2
    .4byte 0x41820664 # beq .L_802A8930
    .4byte 0x40800014 # bge .L_802A82E4
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_802A82F4
    .4byte 0x40800574 # bge .L_802A8850
    .4byte 0x48000F88 # b .L_802A9268
L_802A82E4:
    cmpwi 0, 0x4
    .4byte 0x41820F3C # beq .L_802A9224
    .4byte 0x40800F7C # bge .L_802A9268
    .4byte 0x48000D54 # b .L_802A9044
L_802A82F4:
    lwz 0, 0x244(26)
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802A8308
    cmpwi 0, 0xc
    .4byte 0x4082001C # bne .L_802A8320
L_802A8308:
    mr 3, 26
    li 4, 0x3
    bl fn_801F0D20
    li 0, 0x1
    stw 0, 0x230(26)
    .4byte 0x48000F4C # b .L_802A9268
L_802A8320:
    mr 3, 26
    lwz 12, 0x0(26)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820F30 # beq .L_802A9268
    lwz 3, 0x248(26)
    li 29, 0x0
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_802A8354
    subi 0, 3, 0x1
    stw 0, 0x248(26)
L_802A8354:
    lwz 3, 0x24c(26)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_802A8368
    subi 0, 3, 0x1
    stw 0, 0x24c(26)
L_802A8368:
    lwz 0, 0x24c(26)
    cmpwi 0, 0x0
    .4byte 0x41820048 # beq .L_802A83B8
    lwz 0, 0x244(26)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_802A8398
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_802A8398
    cmpwi 0, 0xb
    .4byte 0x4182000C # beq .L_802A8398
    cmpwi 0, 0xd
    .4byte 0x40820F44 # bne .L_802A92D8
L_802A8398:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x40820F30 # bne .L_802A92D8
    li 0, 0x1
    stb 0, 0x7f5(3)
    .4byte 0x48000F24 # b .L_802A92D8
L_802A83B8:
    lwz 0, 0x244(26)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_802A83DC
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_802A83DC
    cmpwi 0, 0xb
    .4byte 0x4182000C # beq .L_802A83DC
    cmpwi 0, 0xd
    .4byte 0x40820020 # bne .L_802A83F8
L_802A83DC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802A83F8
    li 0, 0x1
    stb 0, 0x7f5(3)
L_802A83F8:
    lwz 0, 0x244(26)
    cmplwi 0, 0xd
    .4byte 0x41810154 # bgt .L_802A8554
    lis 3, jumptable_804A8064@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A8064@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    mr 3, 26
    li 4, 0x3
    bl fn_801F0D20
    li 0, 0x1
    stw 0, 0x230(26)
    .4byte 0x48000124 # b .L_802A8554
    li 0, 0x80
    li 4, 0x6
    stw 0, 0x240(26)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    li 0, 0x3
    stw 0, 0x230(26)
    .4byte 0x48000100 # b .L_802A8554
    li 0, 0x8
    li 4, 0x6
    stw 0, 0x240(26)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    li 0, 0x3
    stw 0, 0x230(26)
    .4byte 0x480000DC # b .L_802A8554
    li 0, 0x8
    li 4, 0x6
    stw 0, 0x240(26)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    lis 3, 0x4842
    li 29, 0x3
    addi 28, 3, 0x4d42
    .4byte 0x480000B4 # b .L_802A8554
    li 0, 0x8
    li 4, 0x6
    stw 0, 0x240(26)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    lis 3, 0x534c
    lis 29, 0x5
    addi 28, 3, 0x5231
    .4byte 0x4800008C # b .L_802A8554
    li 0, 0x1
    lis 3, 0x534c
    lis 29, 0x3
    stw 0, 0x240(26)
    addi 28, 3, 0x5231
    ori 29, 29, 0x102
    .4byte 0x48000070 # b .L_802A8554
    li 0, 0x2
    li 4, 0x6
    stw 0, 0x240(26)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    lis 3, 0x4849
    li 29, 0x1
    addi 28, 3, 0x4e4f
    .4byte 0x48000048 # b .L_802A8554
    li 0, 0x8
    li 4, 0x6
    stw 0, 0x240(26)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    lis 3, 0x5354
    li 29, 0x4
    addi 28, 3, 0x414c
    .4byte 0x48000020 # b .L_802A8554
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x6
    li 5, -0x1
    bl fn_80458880
    lis 3, 0x524f
    li 29, 0x0
    addi 28, 3, 0x5045
L_802A8554:
    lwz 3, 0x244(26)
    cmpwi 3, 0x2
    .4byte 0x41820020 # beq .L_802A857C
    cmpwi 3, 0x4
    .4byte 0x41820018 # beq .L_802A857C
    subi 0, 3, 0x8
    cmplwi 0, 0x3
    .4byte 0x4081000C # ble .L_802A857C
    cmpwi 3, 0xd
    .4byte 0x40820CF0 # bne .L_802A9268
L_802A857C:
    li 27, 0x0
    lis 3, lbl_8052EBC0@ha
    mr 30, 27
    addi 31, 3, lbl_8052EBC0@l
    .4byte 0x480002A4 # b .L_802A8830
L_802A8590:
    lwz 0, 0x244(26)
    cmpwi 0, 0x8
    .4byte 0x4082006C # bne .L_802A8604
    cmpwi 27, 0x0
    .4byte 0x40820034 # bne .L_802A85D4
    .4byte 0xC082D8A0 # lfs f4, lbl_80540840@sda21(r0)
    lfs 3, 0x1004(31)
    lfs 0, 0x10(26)
    lfs 2, 0x1000(31)
    lfs 1, 0xc(26)
    fmadds 3, 4, 3, 0
    .4byte 0xC002D8A4 # lfs f0, lbl_80540844@sda21(r0)
    fmadds 1, 4, 2, 1
    stfs 3, 0x78(1)
    stfs 1, 0x74(1)
    stfs 0, 0x7c(1)
    .4byte 0x480001D0 # b .L_802A87A0
L_802A85D4:
    .4byte 0xC082D8A0 # lfs f4, lbl_80540840@sda21(r0)
    lfs 3, 0x3004(31)
    lfs 0, 0x10(26)
    lfs 2, 0x3000(31)
    lfs 1, 0xc(26)
    fmadds 3, 4, 3, 0
    .4byte 0xC002D8A4 # lfs f0, lbl_80540844@sda21(r0)
    fmadds 1, 4, 2, 1
    stfs 3, 0x78(1)
    stfs 1, 0x74(1)
    stfs 0, 0x7c(1)
    .4byte 0x480001A0 # b .L_802A87A0
L_802A8604:
    cmpwi 0, 0xa
    .4byte 0x40820028 # bne .L_802A8630
    lfs 1, 0xc(26)
    .4byte 0xC002D8A8 # lfs f0, lbl_80540848@sda21(r0)
    stfs 1, 0x74(1)
    lfs 1, 0x10(26)
    stfs 1, 0x78(1)
    lfs 1, 0x14(26)
    stfs 1, 0x7c(1)
    stfs 0, 0x7c(1)
    .4byte 0x48000174 # b .L_802A87A0
L_802A8630:
    cmpwi 0, 0xb
    .4byte 0x4182000C # beq .L_802A8640
    cmpwi 0, 0xd
    .4byte 0x40820128 # bne .L_802A8764
L_802A8640:
    lwz 3, 0x90(26)
    lis 0, 0x4330
    stw 0, 0x80(1)
    extrwi 0, 3, 4, 20
    .4byte 0xC842D8D8 # lfd f2, lbl_80540878@sda21(r0)
    stw 0, 0x84(1)
    .4byte 0xC062D8AC # lfs f3, lbl_8054084C@sda21(r0)
    lfd 1, 0x80(1)
    .4byte 0xC002D8B4 # lfs f0, lbl_80540854@sda21(r0)
    fsubs 1, 1, 2
    fmuls 6, 3, 1
    fcmpu cr0, 6, 0
    mfcr 0
    extrwi 0, 0, 1, 2
    xori 0, 0, 0x1
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x41820008 # beq .L_802A868C
    .4byte 0xC0C2D8B0 # lfs f6, lbl_80540850@sda21(r0)
L_802A868C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    .4byte 0xC002D8BC # lfs f0, lbl_8054085C@sda21(r0)
    addi 5, 3, 0x660d
    lwz 0, 0xb4(4)
    .4byte 0xC082D8B8 # lfs f4, lbl_80540858@sda21(r0)
    fmuls 5, 0, 6
    mullw 3, 0, 5
    .4byte 0xC022D8C4 # lfs f1, lbl_80540864@sda21(r0)
    .4byte 0xC002D8C0 # lfs f0, lbl_80540860@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    lwz 0, 0xb4(6)
    srwi 4, 3, 9
    mullw 3, 0, 5
    oris 0, 4, 0x3f80
    stw 0, 0x4c(1)
    lfs 2, 0x4c(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 2, 2, 4
    stw 0, 0xb4(6)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    fmadds 0, 1, 2, 0
    lwz 3, 0xb4(6)
    lwz 0, 0xb4(7)
    srwi 4, 3, 9
    lfs 3, 0x10(26)
    mullw 3, 0, 5
    oris 0, 4, 0x3f80
    stw 0, 0x48(1)
    lfs 1, 0x48(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 1, 1, 4
    stw 0, 0xb4(7)
    lwz 0, 0xb4(7)
    fnmsubs 1, 5, 1, 6
    lfs 2, 0xc(26)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    fadds 3, 3, 1
    stw 0, 0x44(1)
    lfs 1, 0x44(1)
    stfs 3, 0x78(1)
    fsubs 1, 1, 4
    stfs 0, 0x7c(1)
    fnmsubs 0, 5, 1, 6
    fadds 0, 2, 0
    stfs 0, 0x74(1)
    .4byte 0x48000040 # b .L_802A87A0
L_802A8764:
    lis 3, lbl_8052EBC0@ha
    rlwinm 4, 30, 30, 18, 28
    addi 0, 3, lbl_8052EBC0@l
    .4byte 0xC082D8C8 # lfs f4, lbl_80540868@sda21(r0)
    add 3, 0, 4
    lfs 0, 0x10(26)
    lfs 3, 0x4(3)
    lfs 1, 0xc(26)
    fmadds 3, 4, 3, 0
    lfs 2, 0x0(3)
    .4byte 0xC002D8A4 # lfs f0, lbl_80540844@sda21(r0)
    fmadds 1, 4, 2, 1
    stfs 0, 0x7c(1)
    stfs 1, 0x74(1)
    stfs 3, 0x78(1)
L_802A87A0:
    lwz 25, 0x4(26)
    bl GetRoomConfigRecord
    addis 4, 25, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_802A87CC
    lfs 1, 0x10(26)
    .4byte 0xC002D8B4 # lfs f0, lbl_80540854@sda21(r0)
    stfs 1, 0x78(1)
    stfs 0, 0x7c(1)
L_802A87CC:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(26)
    mr 4, 28
    mr 7, 29
    addi 6, 1, 0x74
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 25, 3
    .4byte 0x41800038 # blt .L_802A8828
    bl SpatialRegistry_GetBase
    mr 4, 25
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_802A8828
    .4byte 0xC022D8B4 # lfs f1, lbl_80540854@sda21(r0)
    .4byte 0xC002D8CC # lfs f0, lbl_8054086C@sda21(r0)
    stfs 1, 0x68(1)
    stfs 1, 0x6c(1)
    psq_l 1, 0x68(1), 0, 0
    stfs 0, 0x70(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_802A8828:
    addi 30, 30, 0x2000
    addi 27, 27, 0x1
L_802A8830:
    lwz 0, 0x240(26)
    cmpw 27, 0
    .4byte 0x4180FD58 # blt .L_802A8590
    li 3, 0x28
    li 0, 0x4
    stw 3, 0x248(26)
    stw 0, 0x230(26)
    .4byte 0x48000A1C # b .L_802A9268
L_802A8850:
    lwz 0, 0x238(26)
    cmpwi 0, 0x2
    .4byte 0x4182005C # beq .L_802A88B4
    .4byte 0x40800010 # bge .L_802A886C
    cmpwi 0, 0x1
    .4byte 0x40800014 # bge .L_802A8878
    .4byte 0x480000C0 # b .L_802A8928
L_802A886C:
    cmpwi 0, 0x4
    .4byte 0x408000B8 # bge .L_802A8928
    .4byte 0x4800007C # b .L_802A88F0
L_802A8878:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x2
    .4byte 0x4082000C # bne .L_802A8890
    li 0, 0x50
    stw 0, 0x240(26)
L_802A8890:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x2
    .4byte 0x4081008C # ble .L_802A8928
    li 3, 0x50
    li 0, 0x2
    stw 3, 0x240(26)
    stw 0, 0x234(26)
    .4byte 0x48000078 # b .L_802A8928
L_802A88B4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x2
    .4byte 0x4082000C # bne .L_802A88CC
    li 0, 0xf0
    stw 0, 0x240(26)
L_802A88CC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x2
    .4byte 0x40810050 # ble .L_802A8928
    li 3, 0xf0
    li 0, 0x2
    stw 3, 0x240(26)
    stw 0, 0x234(26)
    .4byte 0x4800003C # b .L_802A8928
L_802A88F0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x4081002C # ble .L_802A8928
    li 0, 0xff
    stw 0, 0x240(26)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x2
    .4byte 0x40810014 # ble .L_802A8928
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    subi 0, 3, 0x1
    stw 0, 0x234(26)
L_802A8928:
    li 0, 0x2
    stw 0, 0x230(26)
L_802A8930:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802A894C
    li 0, 0x1
    stb 0, 0x7f5(3)
L_802A894C:
    lfs 0, 0xc(26)
    lis 3, 0x19
    .4byte 0xC3C2D8D0 # lfs f30, lbl_80540870@sda21(r0)
    addi 29, 3, 0x660d
    stfs 0, 0x74(1)
    li 28, 0x0
    .4byte 0xC3E2D8B8 # lfs f31, lbl_80540858@sda21(r0)
    lis 27, 0x5255
    lfs 0, 0x10(26)
    stfs 0, 0x78(1)
    lfs 0, 0x14(26)
    stfs 0, 0x7c(1)
L_802A897C:
    lwz 25, 0x4(26)
    bl GetRoomConfigRecord
    addis 4, 25, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x41820120 # beq .L_802A8AB4
    lwz 0, 0x244(26)
    cmpwi 0, 0x6
    .4byte 0x41820014 # beq .L_802A89B4
    cmpwi 0, 0x7
    .4byte 0x4182000C # beq .L_802A89B4
    cmpwi 0, 0xc
    .4byte 0x408200A8 # bne .L_802A8A58
L_802A89B4:
    lwz 3, 0x90(26)
    lis 0, 0x4330
    stw 0, 0x80(1)
    extrwi 0, 3, 4, 20
    .4byte 0xC842D8D8 # lfd f2, lbl_80540878@sda21(r0)
    stw 0, 0x84(1)
    .4byte 0xC062D8AC # lfs f3, lbl_8054084C@sda21(r0)
    lfd 1, 0x80(1)
    .4byte 0xC002D8B4 # lfs f0, lbl_80540854@sda21(r0)
    fsubs 1, 1, 2
    fmuls 4, 3, 1
    fcmpu cr0, 4, 0
    mfcr 0
    extrwi 0, 0, 1, 2
    xori 0, 0, 0x1
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x41820008 # beq .L_802A8A00
    .4byte 0xC082D8B0 # lfs f4, lbl_80540850@sda21(r0)
L_802A8A00:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    .4byte 0xC022D8BC # lfs f1, lbl_8054085C@sda21(r0)
    addi 0, 3, 0x660d
    lwz 3, 0xb4(4)
    .4byte 0xC002D8B8 # lfs f0, lbl_80540858@sda21(r0)
    fmuls 2, 1, 4
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lfs 3, 0xc(26)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x58(1)
    lfs 1, 0x58(1)
    fsubs 0, 1, 0
    fnmsubs 0, 2, 0, 4
    fadds 0, 3, 0
    stfs 0, 0x74(1)
    .4byte 0x48000054 # b .L_802A8AA8
L_802A8A58:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002D8B8 # lfs f0, lbl_80540858@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lfs 3, 0x0(31)
    srwi 0, 0, 9
    lfs 1, 0x8(31)
    oris 0, 0, 0x3f80
    stw 0, 0x54(1)
    fsubs 2, 1, 3
    lfs 1, 0x54(1)
    fsubs 0, 1, 0
    fmadds 0, 2, 0, 3
    stfs 0, 0x74(1)
L_802A8AA8:
    .4byte 0xC002D8B4 # lfs f0, lbl_80540854@sda21(r0)
    stfs 0, 0x7c(1)
    .4byte 0x48000218 # b .L_802A8CC8
L_802A8AB4:
    lwz 0, 0x244(26)
    cmpwi 0, 0x6
    .4byte 0x41820014 # beq .L_802A8AD0
    cmpwi 0, 0x7
    .4byte 0x4182000C # beq .L_802A8AD0
    cmpwi 0, 0xc
    .4byte 0x40820128 # bne .L_802A8BF4
L_802A8AD0:
    lwz 3, 0x90(26)
    lis 0, 0x4330
    stw 0, 0x80(1)
    extrwi 0, 3, 4, 20
    .4byte 0xC842D8D8 # lfd f2, lbl_80540878@sda21(r0)
    stw 0, 0x84(1)
    .4byte 0xC062D8AC # lfs f3, lbl_8054084C@sda21(r0)
    lfd 1, 0x80(1)
    .4byte 0xC002D8B4 # lfs f0, lbl_80540854@sda21(r0)
    fsubs 1, 1, 2
    fmuls 6, 3, 1
    fcmpu cr0, 6, 0
    mfcr 0
    extrwi 0, 0, 1, 2
    xori 0, 0, 0x1
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x41820008 # beq .L_802A8B1C
    .4byte 0xC0C2D8B0 # lfs f6, lbl_80540850@sda21(r0)
L_802A8B1C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    .4byte 0xC002D8BC # lfs f0, lbl_8054085C@sda21(r0)
    addi 5, 3, 0x660d
    lwz 0, 0xb4(4)
    .4byte 0xC082D8B8 # lfs f4, lbl_80540858@sda21(r0)
    fmuls 5, 0, 6
    mullw 3, 0, 5
    .4byte 0xC022D8C4 # lfs f1, lbl_80540864@sda21(r0)
    .4byte 0xC002D8C0 # lfs f0, lbl_80540860@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    lwz 0, 0xb4(6)
    srwi 4, 3, 9
    mullw 3, 0, 5
    oris 0, 4, 0x3f80
    stw 0, 0x40(1)
    lfs 2, 0x40(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 2, 2, 4
    stw 0, 0xb4(6)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    fmadds 0, 1, 2, 0
    lwz 3, 0xb4(6)
    lwz 0, 0xb4(7)
    srwi 4, 3, 9
    lfs 3, 0x10(26)
    mullw 3, 0, 5
    oris 0, 4, 0x3f80
    stw 0, 0x3c(1)
    lfs 1, 0x3c(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 1, 1, 4
    stw 0, 0xb4(7)
    lwz 0, 0xb4(7)
    fnmsubs 1, 5, 1, 6
    lfs 2, 0xc(26)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    fadds 3, 3, 1
    stw 0, 0x38(1)
    lfs 1, 0x38(1)
    stfs 3, 0x78(1)
    fsubs 1, 1, 4
    stfs 0, 0x7c(1)
    fnmsubs 0, 5, 1, 6
    fadds 0, 2, 0
    stfs 0, 0x74(1)
    .4byte 0x480000D8 # b .L_802A8CC8
L_802A8BF4:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 5, 3, 0x660d
    .4byte 0xC062D8B8 # lfs f3, lbl_80540858@sda21(r0)
    lwz 0, 0xb4(4)
    .4byte 0xC022D8C4 # lfs f1, lbl_80540864@sda21(r0)
    mullw 3, 0, 5
    .4byte 0xC002D8C0 # lfs f0, lbl_80540860@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    lwz 0, 0xb4(6)
    srwi 4, 3, 9
    mullw 3, 0, 5
    oris 0, 4, 0x3f80
    stw 0, 0x34(1)
    lfs 2, 0x34(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 2, 2, 3
    stw 0, 0xb4(6)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    fmadds 0, 1, 2, 0
    lwz 3, 0xb4(6)
    lwz 0, 0xb4(7)
    srwi 4, 3, 9
    lfs 4, 0x4(31)
    mullw 3, 0, 5
    lfs 1, 0xc(31)
    oris 0, 4, 0x3f80
    stw 0, 0x30(1)
    fsubs 2, 1, 4
    lfs 1, 0x30(1)
    addis 3, 3, 0x3c6f
    fsubs 1, 1, 3
    subi 0, 3, 0xca1
    stw 0, 0xb4(7)
    fmadds 4, 2, 1, 4
    lwz 0, 0xb4(7)
    lfs 5, 0x0(31)
    srwi 0, 0, 9
    lfs 1, 0x8(31)
    oris 0, 0, 0x3f80
    stw 0, 0x2c(1)
    fsubs 2, 1, 5
    lfs 1, 0x2c(1)
    stfs 4, 0x78(1)
    fsubs 1, 1, 3
    stfs 0, 0x7c(1)
    fmadds 0, 2, 1, 5
    stfs 0, 0x74(1)
L_802A8CC8:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(4)
    mullw 3, 0, 29
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x50(1)
    lfs 0, 0x50(1)
    fsubs 0, 0, 31
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    cmpwi 0, 0x5
    .4byte 0x4080000C # bge .L_802A8D18
    li 25, 0x2
    .4byte 0x48000018 # b .L_802A8D2C
L_802A8D18:
    cmpwi 0, 0x14
    .4byte 0x4080000C # bge .L_802A8D28
    li 25, 0x1
    .4byte 0x48000008 # b .L_802A8D2C
L_802A8D28:
    li 25, 0x0
L_802A8D2C:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(26)
    mr 7, 25
    addi 4, 27, 0x5059
    addi 6, 1, 0x74
    bl fn_801F8544
    lwz 3, 0x23c(26)
    addi 0, 3, 0x1
    stw 0, 0x23c(26)
    lwz 3, 0x23c(26)
    lwz 0, 0x240(26)
    cmpw 3, 0
    .4byte 0x40800010 # bge .L_802A8D6C
    addi 28, 28, 0x1
    cmpwi 28, 0x2
    .4byte 0x4180FC14 # blt .L_802A897C
L_802A8D6C:
    lwz 3, 0x23c(26)
    lwz 0, 0x240(26)
    cmpw 3, 0
    .4byte 0x418004F0 # blt .L_802A9268
    li 28, 0x0
    lis 27, 0x5255
    .4byte 0x480002B0 # b .L_802A9034
L_802A8D88:
    lfs 0, 0xc(26)
    stfs 0, 0x74(1)
    lfs 0, 0x10(26)
    stfs 0, 0x78(1)
    lfs 0, 0x14(26)
    stfs 0, 0x7c(1)
    lwz 25, 0x4(26)
    bl GetRoomConfigRecord
    addis 4, 25, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_802A8DD0
    lfs 1, 0x10(26)
    .4byte 0xC002D8B4 # lfs f0, lbl_80540854@sda21(r0)
    stfs 1, 0x78(1)
    stfs 0, 0x7c(1)
    .4byte 0x48000218 # b .L_802A8FE4
L_802A8DD0:
    lwz 0, 0x244(26)
    cmpwi 0, 0x6
    .4byte 0x41820014 # beq .L_802A8DEC
    cmpwi 0, 0x7
    .4byte 0x4182000C # beq .L_802A8DEC
    cmpwi 0, 0xc
    .4byte 0x40820128 # bne .L_802A8F10
L_802A8DEC:
    lwz 3, 0x90(26)
    lis 0, 0x4330
    stw 0, 0x80(1)
    extrwi 0, 3, 4, 20
    .4byte 0xC842D8D8 # lfd f2, lbl_80540878@sda21(r0)
    stw 0, 0x84(1)
    .4byte 0xC062D8AC # lfs f3, lbl_8054084C@sda21(r0)
    lfd 1, 0x80(1)
    .4byte 0xC002D8B4 # lfs f0, lbl_80540854@sda21(r0)
    fsubs 1, 1, 2
    fmuls 6, 3, 1
    fcmpu cr0, 6, 0
    mfcr 0
    extrwi 0, 0, 1, 2
    xori 0, 0, 0x1
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x41820008 # beq .L_802A8E38
    .4byte 0xC0C2D8B0 # lfs f6, lbl_80540850@sda21(r0)
L_802A8E38:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    .4byte 0xC002D8BC # lfs f0, lbl_8054085C@sda21(r0)
    addi 5, 3, 0x660d
    lwz 0, 0xb4(4)
    .4byte 0xC082D8B8 # lfs f4, lbl_80540858@sda21(r0)
    fmuls 5, 0, 6
    mullw 3, 0, 5
    .4byte 0xC022D8C4 # lfs f1, lbl_80540864@sda21(r0)
    .4byte 0xC002D8C0 # lfs f0, lbl_80540860@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    lwz 0, 0xb4(6)
    srwi 4, 3, 9
    mullw 3, 0, 5
    oris 0, 4, 0x3f80
    stw 0, 0x28(1)
    lfs 2, 0x28(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 2, 2, 4
    stw 0, 0xb4(6)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    fmadds 0, 1, 2, 0
    lwz 3, 0xb4(6)
    lwz 0, 0xb4(7)
    srwi 4, 3, 9
    lfs 3, 0x10(26)
    mullw 3, 0, 5
    oris 0, 4, 0x3f80
    stw 0, 0x24(1)
    lfs 1, 0x24(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 1, 1, 4
    stw 0, 0xb4(7)
    lwz 0, 0xb4(7)
    fnmsubs 1, 5, 1, 6
    lfs 2, 0xc(26)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    fadds 3, 3, 1
    stw 0, 0x20(1)
    lfs 1, 0x20(1)
    stfs 3, 0x78(1)
    fsubs 1, 1, 4
    stfs 0, 0x7c(1)
    fnmsubs 0, 5, 1, 6
    fadds 0, 2, 0
    stfs 0, 0x74(1)
    .4byte 0x480000D8 # b .L_802A8FE4
L_802A8F10:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 5, 3, 0x660d
    .4byte 0xC062D8B8 # lfs f3, lbl_80540858@sda21(r0)
    lwz 0, 0xb4(4)
    .4byte 0xC022D8C4 # lfs f1, lbl_80540864@sda21(r0)
    mullw 3, 0, 5
    .4byte 0xC002D8C0 # lfs f0, lbl_80540860@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    lwz 0, 0xb4(6)
    srwi 4, 3, 9
    mullw 3, 0, 5
    oris 0, 4, 0x3f80
    stw 0, 0x1c(1)
    lfs 2, 0x1c(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 2, 2, 3
    stw 0, 0xb4(6)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    fmadds 0, 1, 2, 0
    lwz 3, 0xb4(6)
    lwz 0, 0xb4(7)
    srwi 4, 3, 9
    lfs 4, 0x4(31)
    mullw 3, 0, 5
    lfs 1, 0xc(31)
    oris 0, 4, 0x3f80
    stw 0, 0x18(1)
    fsubs 2, 1, 4
    lfs 1, 0x18(1)
    addis 3, 3, 0x3c6f
    fsubs 1, 1, 3
    subi 0, 3, 0xca1
    stw 0, 0xb4(7)
    fmadds 4, 2, 1, 4
    lwz 0, 0xb4(7)
    lfs 5, 0x0(31)
    srwi 0, 0, 9
    lfs 1, 0x8(31)
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    fsubs 2, 1, 5
    lfs 1, 0x14(1)
    stfs 4, 0x78(1)
    fsubs 1, 1, 3
    stfs 0, 0x7c(1)
    fmadds 0, 2, 1, 5
    stfs 0, 0x74(1)
L_802A8FE4:
    lwz 0, 0x244(26)
    cmpwi 0, 0x7
    .4byte 0x4082002C # bne .L_802A9018
    bl SpatialRegistry_GetBase
    lis 4, 0x4c50
    lwz 5, 0x4(26)
    addi 4, 4, 0x4c4b
    addi 6, 26, 0xc
    li 7, 0x400
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000254 # b .L_802A9268
L_802A9018:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(26)
    addi 4, 27, 0x5059
    addi 6, 1, 0x74
    li 7, 0x4
    bl fn_801F8544
    addi 28, 28, 0x1
L_802A9034:
    lwz 0, 0x234(26)
    cmpw 28, 0
    .4byte 0x4180FD4C # blt .L_802A8D88
    .4byte 0x48000228 # b .L_802A9268
L_802A9044:
    lwz 0, 0x244(26)
    cmpwi 0, 0x1
    .4byte 0x40820020 # bne .L_802A906C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802A906C
    li 0, 0x1
    stb 0, 0x7f5(3)
L_802A906C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 5, 3, 0x660d
    .4byte 0xC062D8B8 # lfs f3, lbl_80540858@sda21(r0)
    lwz 0, 0xb4(4)
    .4byte 0xC022D8C4 # lfs f1, lbl_80540864@sda21(r0)
    mullw 3, 0, 5
    .4byte 0xC002D8C0 # lfs f0, lbl_80540860@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    lwz 0, 0xb4(6)
    srwi 4, 3, 9
    mullw 3, 0, 5
    oris 0, 4, 0x3f80
    stw 0, 0x10(1)
    lfs 2, 0x10(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 2, 2, 3
    stw 0, 0xb4(6)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    fmadds 0, 1, 2, 0
    lwz 3, 0xb4(6)
    lwz 0, 0xb4(7)
    srwi 4, 3, 9
    lfs 4, 0x4(31)
    mullw 3, 0, 5
    lfs 1, 0xc(31)
    oris 0, 4, 0x3f80
    stw 0, 0xc(1)
    fsubs 2, 1, 4
    lfs 1, 0xc(1)
    addis 3, 3, 0x3c6f
    fsubs 1, 1, 3
    subi 0, 3, 0xca1
    stw 0, 0xb4(7)
    fmadds 4, 2, 1, 4
    lwz 0, 0xb4(7)
    lfs 5, 0x0(31)
    srwi 0, 0, 9
    lfs 1, 0x8(31)
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    fsubs 2, 1, 5
    lfs 1, 0x8(1)
    stfs 4, 0x78(1)
    fsubs 1, 1, 3
    stfs 0, 0x7c(1)
    fmadds 0, 2, 1, 5
    stfs 0, 0x74(1)
    lwz 25, 0x4(26)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 25
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_802A916C
    lfs 1, 0x10(26)
    .4byte 0xC002D8B4 # lfs f0, lbl_80540854@sda21(r0)
    stfs 1, 0x78(1)
    stfs 0, 0x7c(1)
L_802A916C:
    lwz 0, 0x248(26)
    cmpwi 0, 0x0
    .4byte 0x408200F4 # bne .L_802A9268
    lwz 0, 0x244(26)
    cmpwi 0, 0x1
    .4byte 0x40820070 # bne .L_802A91F0
    bl SpatialRegistry_GetBase
    lis 4, 0x4842
    lwz 5, 0x4(26)
    addi 4, 4, 0x4d42
    addi 6, 1, 0x74
    li 7, 0x3
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 25, 3
    .4byte 0x41800038 # blt .L_802A91E4
    bl SpatialRegistry_GetBase
    mr 4, 25
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_802A91E4
    .4byte 0xC022D8B4 # lfs f1, lbl_80540854@sda21(r0)
    .4byte 0xC002D8B8 # lfs f0, lbl_80540858@sda21(r0)
    stfs 1, 0x5c(1)
    stfs 1, 0x60(1)
    psq_l 1, 0x5c(1), 0, 0
    stfs 0, 0x64(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_802A91E4:
    li 0, 0x1e
    stw 0, 0x248(26)
    .4byte 0x48000028 # b .L_802A9214
L_802A91F0:
    bl SpatialRegistry_GetBase
    lis 4, 0x504f
    lwz 5, 0x4(26)
    addi 4, 4, 0x504f
    addi 6, 1, 0x74
    li 7, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802A9214:
    lwz 3, 0x23c(26)
    addi 0, 3, 0x1
    stw 0, 0x23c(26)
    .4byte 0x48000048 # b .L_802A9268
L_802A9224:
    lwz 0, 0x244(26)
    cmpwi 0, 0xb
    .4byte 0x4182000C # beq .L_802A9238
    cmpwi 0, 0xd
    .4byte 0x40820020 # bne .L_802A9254
L_802A9238:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802A9254
    li 0, 0x1
    stb 0, 0x7f5(3)
L_802A9254:
    lwz 0, 0x248(26)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802A9268
    mr 3, 26
    bl fn_801F3668
L_802A9268:
    lwz 0, 0x230(26)
    cmpwi 0, 0x0
    .4byte 0x41820068 # beq .L_802A92D8
    lwz 3, 0x248(26)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_802A9288
    subi 0, 3, 0x1
    stw 0, 0x248(26)
L_802A9288:
    lwz 3, 0x24c(26)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_802A929C
    subi 0, 3, 0x1
    stw 0, 0x24c(26)
L_802A929C:
    lwz 0, 0x230(26)
    cmpwi 0, 0x4
    .4byte 0x41820034 # beq .L_802A92D8
    lwz 3, 0x23c(26)
    lwz 0, 0x240(26)
    cmpw 3, 0
    .4byte 0x41800024 # blt .L_802A92D8
    bl GetRoomConfigRecord
    lwz 0, 0x90(26)
    li 5, 0x1
    li 6, 0xff
    extrwi 4, 0, 5, 5
    bl fn_802D8050
    mr 3, 26
    bl fn_801F3668
L_802A92D8:
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    lmw 25, 0x94(1)
    lwz 0, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

fn_802A92FC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    stw 0, 0x248(3)
    stw 0, 0x24c(3)
    stw 0, 0x230(3)
    stw 0, 0x23c(3)
    stw 0, 0x240(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 24
    stw 0, 0x244(3)
    lwz 0, 0x244(3)
    cmpwi 0, 0x3
    .4byte 0x4182002C # beq .L_802A9368
    cmpwi 0, 0xc
    .4byte 0x41820024 # beq .L_802A9368
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_802A9368
    li 0, 0x0
    stb 0, 0x11c(31)
L_802A9368:
    lwz 0, 0x90(31)
    extrwi 0, 0, 8, 12
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802A9388
    li 0, 0x100
    stw 0, 0x240(31)
L_802A9388:
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x234(31)
    stw 0, 0x238(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x78
    .4byte 0x41820028 # beq .L_802A93C8
    .4byte 0x40800010 # bge .L_802A93B4
    cmpwi 0, 0x28
    .4byte 0x41820014 # beq .L_802A93C0
    .4byte 0x4800002C # b .L_802A93DC
L_802A93B4:
    cmpwi 0, 0xc8
    .4byte 0x4182001C # beq .L_802A93D4
    .4byte 0x48000020 # b .L_802A93DC
L_802A93C0:
    stw 3, 0x238(31)
    .4byte 0x48000018 # b .L_802A93DC
L_802A93C8:
    li 0, 0x2
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_802A93DC
L_802A93D4:
    li 0, 0x3
    stw 0, 0x238(31)
L_802A93DC:
    lwz 3, 0x244(31)
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_802A940C
    cmpwi 3, 0x4
    .4byte 0x41820020 # beq .L_802A940C
    cmplwi 3, 0x1
    .4byte 0x40810018 # ble .L_802A940C
    subi 0, 3, 0x8
    cmplwi 0, 0x3
    .4byte 0x4081000C # ble .L_802A940C
    cmpwi 3, 0xd
    .4byte 0x4082000C # bne .L_802A9414
L_802A940C:
    li 0, 0x28
    stw 0, 0x24c(31)
L_802A9414:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802A9428:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D0E68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D0E68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A9478
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
L_802A9478:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A94B0
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
L_802A94B0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A94E8
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
L_802A94E8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A9520
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
L_802A9520:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A9558
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
L_802A9558:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A9590
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
L_802A9590:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A95C8
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
L_802A95C8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A9600
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
L_802A9600:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A9638
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
L_802A9638:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_802A7FFC
    .4byte fn_802A9428

