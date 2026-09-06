/*
 * TINK (vtable lbl_804A51E4). Validates/re-resolves the 3 tracked target
 * IDs (this->0x2ac/0x2b0/0x2b4) via the spatial registry plus per-slot
 * confirmation predicates (fn_801CC910/fn_801CC960/fn_801CC9B0), falling
 * back to fresh nearest-queries (fn_801F750C/fn_801F7464/fn_801F732C) on
 * failure. Ends with a dispatch on this->0x248/this->0x230 flags/
 * this->0x2bc deciding whether to call fn_801E1594(this, 7).
 */
.section extab, "a"
.balign 4
.global etb_80008950
etb_80008950:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008950, 8

.section extabindex, "a"
.balign 4
.global eti_80015E2C
eti_80015E2C:
    .4byte fn_801E1300
    .4byte 0x00000294
    .4byte etb_80008950
.size eti_80015E2C, 12

.text
.balign 4
.global fn_801E1300

fn_801E1300:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, 0x0
    lwz 30, 0x2ac(3)
    cmpwi 30, 0x0
    .4byte 0x4180002C # blt .L_801E1354
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801E134C
    bl fn_801CC910
    clrlwi. 0, 3, 24
    .4byte 0x408200F0 # bne .L_801E1438
L_801E134C:
    li 29, 0x1
    .4byte 0x480000E8 # b .L_801E1438
L_801E1354:
    lwz 30, 0x2b0(31)
    cmpwi 30, 0x0
    .4byte 0x4180002C # blt .L_801E1388
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801E1380
    bl fn_801CC960
    clrlwi. 0, 3, 24
    .4byte 0x408200BC # bne .L_801E1438
L_801E1380:
    li 29, 0x1
    .4byte 0x480000B4 # b .L_801E1438
L_801E1388:
    lwz 30, 0x2b4(31)
    cmpwi 30, 0x0
    .4byte 0x4180002C # blt .L_801E13BC
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801E13B4
    bl fn_801CC9B0
    clrlwi. 0, 3, 24
    .4byte 0x40820088 # bne .L_801E1438
L_801E13B4:
    li 29, 0x1
    .4byte 0x48000080 # b .L_801E1438
L_801E13BC:
    bl SpatialRegistry_GetBase
    lwz 4, 0x4(31)
    lwz 5, 0x2b8(31)
    bl fn_801F750C
    stw 3, 0x2ac(31)
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_801E13EC
    li 0, -0x1
    stw 0, 0x2b0(31)
    stw 0, 0x2b4(31)
    .4byte 0x48000050 # b .L_801E1438
L_801E13EC:
    bl SpatialRegistry_GetBase
    lwz 4, 0x4(31)
    li 5, -0x1
    bl fn_801F7464
    stw 3, 0x2b0(31)
    lwz 0, 0x2b0(31)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_801E1418
    li 0, -0x1
    stw 0, 0x2b4(31)
    .4byte 0x48000024 # b .L_801E1438
L_801E1418:
    bl SpatialRegistry_GetBase
    addi 5, 31, 0xc
    lwz 4, 0x4(31)
    .4byte 0xC022C514 # lfs f1, lbl_8053F4B4@sda21(r0)
    mr 6, 5
    lwz 7, 0x2b8(31)
    bl fn_801F732C
    stw 3, 0x2b4(31)
L_801E1438:
    clrlwi. 0, 29, 24
    .4byte 0x4182013C # beq .L_801E1578
    bl SpatialRegistry_GetBase
    lwz 4, 0x4(31)
    lwz 5, 0x2b8(31)
    bl fn_801F750C
    stw 3, 0x2ac(31)
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_801E1470
    li 0, -0x1
    stw 0, 0x2b0(31)
    stw 0, 0x2b4(31)
    .4byte 0x48000050 # b .L_801E14BC
L_801E1470:
    bl SpatialRegistry_GetBase
    lwz 4, 0x4(31)
    li 5, -0x1
    bl fn_801F7464
    stw 3, 0x2b0(31)
    lwz 0, 0x2b0(31)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_801E149C
    li 0, -0x1
    stw 0, 0x2b4(31)
    .4byte 0x48000024 # b .L_801E14BC
L_801E149C:
    bl SpatialRegistry_GetBase
    addi 5, 31, 0xc
    lwz 4, 0x4(31)
    .4byte 0xC022C514 # lfs f1, lbl_8053F4B4@sda21(r0)
    mr 6, 5
    lwz 7, 0x2b8(31)
    bl fn_801F732C
    stw 3, 0x2b4(31)
L_801E14BC:
    lwz 0, 0x248(31)
    li 3, 0x0
    cmpwi 0, 0x7
    .4byte 0x4182009C # beq .L_801E1564
    .4byte 0x40800010 # bge .L_801E14DC
    cmpwi 0, 0x0
    .4byte 0x41820090 # beq .L_801E1564
    .4byte 0x48000014 # b .L_801E14EC
L_801E14DC:
    cmpwi 0, 0x13
    .4byte 0x4080000C # bge .L_801E14EC
    cmpwi 0, 0xf
    .4byte 0x4080007C # bge .L_801E1564
L_801E14EC:
    lwz 5, 0x230(31)
    rlwinm. 0, 5, 0, 17, 17
    .4byte 0x40820070 # bne .L_801E1564
    lhz 0, 0x2cc(31)
    cmplwi 0, 0x0
    .4byte 0x40820064 # bne .L_801E1564
    lwz 0, 0x278(31)
    li 4, 0x0
    cmpwi 0, 0xd
    .4byte 0x40800018 # bge .L_801E1528
    cmpwi 0, 0x3
    .4byte 0x4080001C # bge .L_801E1534
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_801E1530
    .4byte 0x48000010 # b .L_801E1534
L_801E1528:
    cmpwi 0, 0x11
    .4byte 0x40800008 # bge .L_801E1534
L_801E1530:
    li 4, 0x1
L_801E1534:
    clrlwi. 0, 4, 24
    .4byte 0x4182002C # beq .L_801E1564
    rlwinm. 0, 5, 0, 14, 14
    .4byte 0x41820014 # beq .L_801E1554
    rlwinm. 0, 5, 0, 11, 11
    .4byte 0x4182001C # beq .L_801E1564
    li 3, 0x1
    .4byte 0x48000014 # b .L_801E1564
L_801E1554:
    lwz 0, 0x2bc(31)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801E1564
    li 3, 0x1
L_801E1564:
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801E1578
    mr 3, 31
    li 4, 0x7
    bl fn_801E1594
L_801E1578:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

