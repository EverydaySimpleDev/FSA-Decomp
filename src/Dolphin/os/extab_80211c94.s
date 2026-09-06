/*
 * RUSA core-update cluster (vtable lbl_804A6270), part 5/7.
 *
 * fn_80211C94(this): early-exit trigger for the fn_8021148C state machine
 * (part 4/7). No-ops unless this->0x248 (state) is >= 2. Then a nested
 * switch on this->0x2ac (spawn/behavior variant):
 *   - variant 3: checks a room flag (this->0x2b0) via GetRoomConfigRecord/
 *     fn_802D800C; if set, fires the same per-companion-type room-flag
 *     toggle effect used throughout fn_8021148C (keyed off the current
 *     state), then forces the state machine into state 6 (reset) with
 *     this->0x24c=0.
 *   - variant 4: checks fn_801D05F8(this, &this->0xc) for a valid target
 *     (r3>=0); if found, same per-companion-type effect + forced state 6.
 *
 * Effectively: an external "condition met, abort the telegraph cycle"
 * check run once per frame ahead of the main state machine.
 */
.section extab, "a"
.balign 4
.global etb_8000A078
etb_8000A078:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A078, 8

.section extabindex, "a"
.balign 4
.global eti_80017BFC
eti_80017BFC:
    .4byte fn_80211C94
    .4byte 0x0000021C
    .4byte etb_8000A078
.size eti_80017BFC, 12

.text
.balign 4
.global fn_80211C94

fn_80211C94:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x6
    .4byte 0x408001E4 # bge .L_80211E98
    cmpwi 0, 0x2
    .4byte 0x40800008 # bge .L_80211CC4
    .4byte 0x480001D8 # b .L_80211E98
L_80211CC4:
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x3
    .4byte 0x408200E8 # bne .L_80211DB4
    lwz 30, 0x2b0(31)
    cmpwi 30, 0x0
    .4byte 0x418200DC # beq .L_80211DB4
    bl GetRoomConfigRecord
    mr 4, 30
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x408200C8 # bne .L_80211DB4
    lwz 0, 0x248(31)
    cmpwi 0, 0x6
    .4byte 0x4182005C # beq .L_80211D54
    .4byte 0x40800078 # bge .L_80211D74
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_80211D0C
    .4byte 0x4800006C # b .L_80211D74
L_80211D0C:
    lwz 30, 0x388(31)
    cmpwi 30, 0x0
    .4byte 0x4180001C # blt .L_80211D30
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80211D30
    bl fn_80212ECC
L_80211D30:
    lwz 30, 0x2b8(31)
    cmpwi 30, 0x0
    .4byte 0x4182003C # beq .L_80211D74
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_80211D74
L_80211D54:
    lwz 30, 0x2b8(31)
    cmpwi 30, 0x0
    .4byte 0x41820018 # beq .L_80211D74
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_80211D74:
    lwz 30, 0x388(31)
    cmpwi 30, 0x0
    .4byte 0x41800024 # blt .L_80211DA0
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80211DA0
    lwz 0, 0x230(3)
    ori 0, 0, 0x4000
    stw 0, 0x230(3)
L_80211DA0:
    li 3, 0x0
    li 0, 0x6
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x480000E8 # b .L_80211E98
L_80211DB4:
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x4
    .4byte 0x408200DC # bne .L_80211E98
    lfs 1, 0x3a0(31)
    mr 3, 31
    addi 4, 31, 0xc
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x408000C4 # bge .L_80211E98
    lwz 0, 0x248(31)
    cmpwi 0, 0x6
    .4byte 0x4182005C # beq .L_80211E3C
    .4byte 0x40800078 # bge .L_80211E5C
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_80211DF4
    .4byte 0x4800006C # b .L_80211E5C
L_80211DF4:
    lwz 30, 0x388(31)
    cmpwi 30, 0x0
    .4byte 0x4180001C # blt .L_80211E18
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80211E18
    bl fn_80212ECC
L_80211E18:
    lwz 30, 0x2b8(31)
    cmpwi 30, 0x0
    .4byte 0x4182003C # beq .L_80211E5C
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_80211E5C
L_80211E3C:
    lwz 30, 0x2b8(31)
    cmpwi 30, 0x0
    .4byte 0x41820018 # beq .L_80211E5C
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_80211E5C:
    lwz 30, 0x388(31)
    cmpwi 30, 0x0
    .4byte 0x41800024 # blt .L_80211E88
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80211E88
    lwz 0, 0x230(3)
    ori 0, 0, 0x4000
    stw 0, 0x230(3)
L_80211E88:
    li 3, 0x0
    li 0, 0x6
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
L_80211E98:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

