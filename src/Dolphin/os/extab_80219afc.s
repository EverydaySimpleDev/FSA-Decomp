/*
 * NEW ACTOR (vtable lbl_804A6550) - fn_80219AFC(this, newState). The
 * shared state-ENTRY handler: pre-transition guard checks against
 * fn_8021B5C4/fn_8021B5A0 (both outside this gap) when moving in/out of
 * states 5/0xb, then an 13-way jumptable (jumptable_804A6628) doing
 * per-state setup, always committing this->0x24c=0;
 * this->0x248=newState at the end - the exact analog of TINK's
 * fn_801E1594 and the orbit-attacker's fn_8021DFAC. Landed as Track A
 * (byte-matched) + structural overview.
 *
 * Per-state setup includes: calling fn_8021ABC0(&this->0x2c8) for
 * states 7/9; resolving a room-config boundary clamp (GetRoomConfigRecord +
 * fn_802D8050) when this->0x2b0 is set; toggling global VFX
 * (fn_8043A0E8/fn_8043A608, unconfirmed) based on flag bits 15/16;
 * random-point-in-cone position rolls via fn_801CBB98; and rail-history
 * appends via the confirmed fn_801D22DC (modes 0-3).
 */
.section extab, "a"
.balign 4
.global etb_8000A350
etb_8000A350:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000A350, 8

.section extabindex, "a"
.balign 4
.global eti_80018040
eti_80018040:
    .4byte fn_80219AFC
    .4byte 0x00000308
    .4byte etb_8000A350
.size eti_80018040, 12

.text
.balign 4
.global fn_80219AFC

fn_80219AFC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    li 0, 0x0
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    lwz 3, 0x248(3)
    cmpwi 3, 0xb
    .4byte 0x41820014 # beq .L_80219B3C
    .4byte 0x40800014 # bge .L_80219B40
    cmpwi 3, 0x5
    .4byte 0x41820008 # beq .L_80219B3C
    .4byte 0x48000008 # b .L_80219B40
L_80219B3C:
    li 0, 0x1
L_80219B40:
    clrlwi. 0, 0, 24
    .4byte 0x40820038 # bne .L_80219B7C
    cmpwi 31, 0xb
    li 0, 0x0
    .4byte 0x41820014 # beq .L_80219B64
    .4byte 0x40800014 # bge .L_80219B68
    cmpwi 31, 0x5
    .4byte 0x41820008 # beq .L_80219B64
    .4byte 0x48000008 # b .L_80219B68
L_80219B64:
    li 0, 0x1
L_80219B68:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_80219B7C
    mr 3, 30
    bl fn_8021B5C4
    .4byte 0x4800005C # b .L_80219BD4
L_80219B7C:
    cmpwi 3, 0xb
    li 0, 0x0
    .4byte 0x41820014 # beq .L_80219B98
    .4byte 0x40800014 # bge .L_80219B9C
    cmpwi 3, 0x5
    .4byte 0x41820008 # beq .L_80219B98
    .4byte 0x48000008 # b .L_80219B9C
L_80219B98:
    li 0, 0x1
L_80219B9C:
    clrlwi. 0, 0, 24
    .4byte 0x41820034 # beq .L_80219BD4
    cmpwi 31, 0xb
    li 0, 0x0
    .4byte 0x41820014 # beq .L_80219BC0
    .4byte 0x40800014 # bge .L_80219BC4
    cmpwi 31, 0x5
    .4byte 0x41820008 # beq .L_80219BC0
    .4byte 0x48000008 # b .L_80219BC4
L_80219BC0:
    li 0, 0x1
L_80219BC4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80219BD4
    mr 3, 30
    bl fn_8021B5A0
L_80219BD4:
    lwz 0, 0x248(30)
    cmpwi 0, 0x7
    .4byte 0x4182002C # beq .L_80219C08
    .4byte 0x40800010 # bge .L_80219BF0
    cmpwi 0, 0x5
    .4byte 0x41820014 # beq .L_80219BFC
    .4byte 0x48000070 # b .L_80219C5C
L_80219BF0:
    cmpwi 0, 0x9
    .4byte 0x41820014 # beq .L_80219C08
    .4byte 0x48000064 # b .L_80219C5C
L_80219BFC:
    addi 3, 30, 0x2c8
    bl fn_8021ABC0
    .4byte 0x48000058 # b .L_80219C5C
L_80219C08:
    lwz 29, 0x2b0(30)
    cmpwi 29, 0x0
    .4byte 0x41820018 # beq .L_80219C28
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_80219C28:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x4182000C # beq .L_80219C3C
    li 3, 0x1
    bl fn_8043A0E8
L_80219C3C:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 16, 16
    .4byte 0x41820018 # beq .L_80219C5C
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043A608
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 17, 15
    stw 0, 0x230(30)
L_80219C5C:
    cmplwi 31, 0xc
    .4byte 0x4181017C # bgt .L_80219DDC
    lis 3, jumptable_804A6628@ha
    slwi 0, 31, 2
    addi 3, 3, jumptable_804A6628@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0xC002CCF4 # lfs f0, lbl_8053FC94@sda21(r0)
    stfs 0, 0x258(30)
    lwz 29, 0x4(30)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_80219C9C
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80219CA0
L_80219C9C:
    addi 3, 3, 0xdc
L_80219CA0:
    lwz 0, 0x230(30)
    addi 4, 30, 0x24
    li 5, -0x5556
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820008 # beq .L_80219CB8
    li 5, 0x5556
L_80219CB8:
    .4byte 0xC022CCF8 # lfs f1, lbl_8053FC98@sda21(r0)
    addi 6, 1, 0x8
    bl fn_801CBB98
    lfs 2, 0xc(1)
    lfs 1, 0x8(1)
    .4byte 0xC002CCF0 # lfs f0, lbl_8053FC90@sda21(r0)
    stfs 1, 0xc(30)
    stfs 2, 0x10(30)
    stfs 0, 0x14(30)
    .4byte 0x48000100 # b .L_80219DDC
    .4byte 0xC002CCBC # lfs f0, lbl_8053FC5C@sda21(r0)
    addi 3, 30, 0x270
    li 4, 0x2
    li 5, 0x0
    stfs 0, 0x258(30)
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x480000E0 # b .L_80219DDC
    .4byte 0xC002CCBC # lfs f0, lbl_8053FC5C@sda21(r0)
    stfs 0, 0x258(30)
    .4byte 0x480000D4 # b .L_80219DDC
    .4byte 0xC002CCBC # lfs f0, lbl_8053FC5C@sda21(r0)
    lis 4, 0x4
    mr 3, 30
    li 5, 0x0
    stfs 0, 0x258(30)
    addi 4, 4, 0x6c
    bl fn_801F0E34
    .4byte 0x480000B4 # b .L_80219DDC
    .4byte 0xC002CCBC # lfs f0, lbl_8053FC5C@sda21(r0)
    li 0, 0x1
    stfs 0, 0x258(30)
    stb 0, 0x2d4(30)
    .4byte 0x480000A0 # b .L_80219DDC
    .4byte 0xC002CCBC # lfs f0, lbl_8053FC5C@sda21(r0)
    addi 3, 30, 0x270
    li 4, 0x3
    li 5, 0x0
    stfs 0, 0x258(30)
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000080 # b .L_80219DDC
    .4byte 0xC002CCF4 # lfs f0, lbl_8053FC94@sda21(r0)
    addi 3, 30, 0x270
    li 4, 0x1
    li 5, 0x0
    stfs 0, 0x258(30)
    li 6, 0x0
    bl fn_801D22DC
    lwz 29, 0x4(30)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_80219D94
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80219D98
L_80219D94:
    addi 3, 3, 0xdc
L_80219D98:
    lwz 4, 0x230(30)
    rlwinm. 0, 4, 0, 15, 15
    .4byte 0x41820018 # beq .L_80219DB8
    lwz 0, 0x230(30)
    li 5, -0x3556
    ori 0, 0, 0x2000
    stw 0, 0x230(30)
    .4byte 0x48000018 # b .L_80219DCC
L_80219DB8:
    rlwinm. 0, 4, 0, 18, 18
    .4byte 0x4182000C # beq .L_80219DC8
    li 5, -0x2aaa
    .4byte 0x48000008 # b .L_80219DCC
L_80219DC8:
    li 5, 0x2aaa
L_80219DCC:
    .4byte 0xC022CCF8 # lfs f1, lbl_8053FC98@sda21(r0)
    addi 4, 30, 0x24
    addi 6, 30, 0x2bc
    bl fn_801CBB98
L_80219DDC:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

