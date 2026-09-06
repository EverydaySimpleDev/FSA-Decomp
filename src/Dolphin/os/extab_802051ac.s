/*
 * NEW ACTOR (vtable lbl_804A5A30) - fn_802051AC(this, flag). Landed as
 * Track A (byte-matched) + structural overview.
 *
 * While a "cutscene mode" byte (this->0xc4) is set and a controller
 * index (this->0xc8) is in [0,4), calls the unconfirmed fn_80204638()
 * and - unless a flag byte is already set - checks room membership via
 * GetRoomConfigRecord/fn_802D7F40, triggering fn_80230C6C(this->0xc8) on a room
 * match. Independently, on an "out of room" gate (matching fn_80204EB8/
 * fn_8020609C) for specific states, transitions via the confirmed
 * fn_80205E0C(this, 9) - this actor's own state-ENTRY handler. Ticks
 * down two countdown bytes (this->0x348/0x349). On a second "out of
 * room" check (mode==1 gated), for non-idle states calls
 * fn_80204638()+fn_802046FC() and if both pass, transitions via
 * fn_80205E0C(this, 3). Ends by calling the doubly-confirmed
 * fn_801CE0A4(this, flag) and fn_8020FADC(this) (outside this gap).
 */
.section extab, "a"
.balign 4
.global etb_80009C30
etb_80009C30:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80009C30, 8

.section extabindex, "a"
.balign 4
.global eti_800175CC
eti_800175CC:
    .4byte fn_802051AC
    .4byte 0x000002CC
    .4byte etb_80009C30
.size eti_800175CC, 12

.text
.balign 4
.global fn_802051AC

fn_802051AC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    mr 30, 3
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    lbz 0, 0xc4(3)
    cmplwi 0, 0x0
    .4byte 0x41820060 # beq .L_80205238
    lwz 0, 0xc8(30)
    cmpwi 0, 0x0
    .4byte 0x41800054 # blt .L_80205238
    cmpwi 0, 0x4
    .4byte 0x4080004C # bge .L_80205238
    bl fn_80204638
    lbz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_80205230
    lwz 28, 0x354(30)
    li 29, 0x0
    cmpwi 28, 0x0
    .4byte 0x4182001C # beq .L_80205228
    bl GetRoomConfigRecord
    mr 4, 28
    bl fn_802D7F40
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80205228
    li 29, 0x1
L_80205228:
    clrlwi. 0, 29, 24
    .4byte 0x4182000C # beq .L_80205238
L_80205230:
    lwz 3, 0xc8(30)
    bl fn_80230C6C
L_80205238:
    lwz 28, 0x354(30)
    li 29, 0x0
    cmpwi 28, 0x0
    .4byte 0x4182001C # beq .L_80205260
    bl GetRoomConfigRecord
    mr 4, 28
    bl fn_802D7F40
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80205260
    li 29, 0x1
L_80205260:
    clrlwi. 0, 29, 24
    .4byte 0x4182003C # beq .L_802052A0
    lwz 0, 0x248(30)
    cmpwi 0, 0x7
    .4byte 0x41820030 # beq .L_802052A0
    .4byte 0x40800018 # bge .L_8020528C
    cmpwi 0, 0x6
    .4byte 0x40800018 # bge .L_80205294
    cmpwi 0, 0x3
    .4byte 0x4080001C # bge .L_802052A0
    .4byte 0x4800000C # b .L_80205294
L_8020528C:
    cmpwi 0, 0x9
    .4byte 0x41820010 # beq .L_802052A0
L_80205294:
    mr 3, 30
    li 4, 0x9
    bl fn_80205E0C
L_802052A0:
    lbz 3, 0x348(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_802052B4
    subi 0, 3, 0x1
    stb 0, 0x348(30)
L_802052B4:
    lbz 3, 0x349(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_802052C8
    subi 0, 3, 0x1
    stb 0, 0x349(30)
L_802052C8:
    lhz 0, 0x94(30)
    li 29, 0x0
    cmplwi 0, 0x1
    .4byte 0x40820084 # bne .L_80205358
    lwz 3, 0x4(30)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x40820074 # bne .L_80205358
    lwz 28, 0x4(30)
    bl GetRoomConfigRecord
    cmpwi 28, 0x8
    .4byte 0x4080000C # bge .L_80205300
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80205304
L_80205300:
    addi 3, 3, 0xdc
L_80205304:
    lfs 2, 0xc(30)
    li 0, 0x0
    lfs 0, 0x0(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_8020534C
    lfs 1, 0x10(30)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8020534C
    lfs 0, 0x8(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8020534C
    lfs 0, 0xc(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8020534C
    li 0, 0x1
L_8020534C:
    clrlwi. 0, 0, 24
    .4byte 0x40820008 # bne .L_80205358
    li 29, 0x1
L_80205358:
    clrlwi. 0, 29, 24
    .4byte 0x408200FC # bne .L_80205458
    lwz 0, 0x248(30)
    cmpwi 0, 0x9
    .4byte 0x418200DC # beq .L_80205444
    .4byte 0x40800014 # bge .L_80205380
    cmpwi 0, 0x5
    .4byte 0x4080000C # bge .L_80205380
    cmpwi 0, 0x3
    .4byte 0x408000C8 # bge .L_80205444
L_80205380:
    bl fn_80204638
    lbz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x408200B8 # bne .L_80205444
    lwz 28, 0x354(30)
    li 29, 0x0
    cmpwi 28, 0x0
    .4byte 0x4182001C # beq .L_802053B8
    bl GetRoomConfigRecord
    mr 4, 28
    bl fn_802D7F40
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_802053B8
    li 29, 0x1
L_802053B8:
    clrlwi. 0, 29, 24
    .4byte 0x40820088 # bne .L_80205444
    mr 3, 30
    addi 4, 1, 0x8
    bl fn_801F31C4
    li 29, 0x0
L_802053D0:
    mr 3, 29
    bl fn_801CCFE4
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_80205438
    lwz 28, 0x4(30)
    mr 3, 29
    bl fn_8023DE58
    cmpw 3, 28
    .4byte 0x40820048 # bne .L_80205438
    lwz 5, 0x4(30)
    mr 3, 29
    addi 4, 1, 0x8
    bl fn_80239C00
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_80205438
    lwz 4, 0x198(30)
    mr 3, 29
    li 5, 0x1
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80205438
    mr 3, 30
    li 4, 0x3
    bl fn_80205E0C
    .4byte 0x48000010 # b .L_80205444
L_80205438:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF90 # blt .L_802053D0
L_80205444:
    mr 3, 30
    mr 4, 31
    bl fn_801CE0A4
    mr 3, 30
    bl fn_8020FADC
L_80205458:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

