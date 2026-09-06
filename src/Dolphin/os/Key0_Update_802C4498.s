.section extab, "a"
.balign 4
.global etb_8000CA84
etb_8000CA84:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000CA84, 8

.section extabindex, "a"
.balign 4
.global eti_8001B940
eti_8001B940:
    .4byte fn_802C4498
    .4byte 0x00000DEC
    .4byte etb_8000CA84
.size eti_8001B940, 12

# fn_802C4498(this) - KEY0's real update(). Large (891 instructions) -
# read extensively and genuinely understood at the architectural level;
# the later portion of the state machine (dispatching on `this->0x240`)
# is survey-level for its less central branches, consistent with this
# project's practice for its largest functions.
#
# 1. **Pickup-attempt gate** (`this->0x2b0`): when a pickup is pending,
#    runs an extensive chain of ALREADY-CONFIRMED per-player helpers in
#    sequence - `Player_GetCapabilityFlagByIndex` (validity), `fn_8022D75C`/`fn_8022BC38`/
#    `fn_802DE764` (new - interaction-mode/grab-eligibility checks),
#    `fn_8023DE58` (owner-match, confirmed from STAL's update), and
#    `fn_8023E724` (per-player position accessor, confirmed from WIZR's
#    update) to snap the key's OWN position to the grabbing player's -
#    only on full success does the pickup actually commit (clears
#    `this->0x2b0`, signals success to the state machine below).
# 2. **Position/physics integration**: the same paired-single `ps_add`
#    velocity idiom used throughout this project, plus a pose-set call
#    via `fn_801F2618` (the same overloaded "set pose" entry point
#    STAL/WIZR's updates use).
# 3. **"Delivered to player" sequence** (a later state case): snaps
#    position via `fn_8023E7B0` (new per-player accessor sibling to
#    `fn_8023E724`), sets owner via `fn_8023DE58`, and looks up the
#    carrying player's COLOR via `fn_8023BCD4` (new - confirms and
#    extends the per-player-color theme already seen in KEY0's own
#    draw(), `fn_8023CB24`/`fn_8023CA88`) - then gates ongoing
#    visibility (`this->0x2b4`, the SAME flag draw() checks) on further
#    player-state queries (`fn_8022D75C`/`fn_80234E30`/`fn_8022D498`,
#    new).
# 4. Delegates to 2 sibling helpers in the same translation unit,
#    `fn_802C3AE4`/`fn_802C2840` (between this function and KEY0's other
#    methods - not yet decompiled), at specific state-machine points.
#
# Overall: this is the full "lie on the ground -> get picked up ->
# follow/be carried by a specific colored player -> deliver" lifecycle
# for a collectible key item, built entirely on already-confirmed
# per-player registry primitives.
.text
.balign 4
.global fn_802C4498

fn_802C4498:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    li 0, 0xff
    stw 31, 0xcc(1)
    mr 31, 3
    stw 30, 0xc8(1)
    stw 29, 0xc4(1)
    stw 28, 0xc0(1)
    stb 0, 0x2ad(3)
    li 0, 0x0
    li 3, 0x1
    stb 0, 0x2ac(31)
    stb 3, 0x2b4(31)
    lbz 0, 0x2b0(31)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_802C44E0
    .4byte 0x48000130 # b .L_802C460C
L_802C44E0:
    .4byte 0xC002DD0C # lfs f0, lbl_80540CAC@sda21(r0)
    stfs 0, 0x14(31)
    lwz 3, 0x23c(31)
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802C4500
    li 3, 0x0
    .4byte 0x48000110 # b .L_802C460C
L_802C4500:
    lwz 3, 0x23c(31)
    bl fn_8022D75C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802C451C
    li 3, 0x0
    .4byte 0x480000F4 # b .L_802C460C
L_802C451C:
    lwz 3, 0x23c(31)
    addi 5, 31, 0xc
    lwz 4, 0x4(31)
    bl fn_8022BC38
    clrlwi. 0, 3, 24
    .4byte 0x40820050 # bne .L_802C4580
    li 3, 0x1
    li 4, 0x1
    li 5, 0x2
    bl fn_802DE764
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802C4554
    li 3, 0x0
    .4byte 0x480000BC # b .L_802C460C
L_802C4554:
    lwz 0, 0x4(31)
    cmpwi 0, 0xa
    .4byte 0x4182000C # beq .L_802C4568
    li 3, 0x0
    .4byte 0x480000A8 # b .L_802C460C
L_802C4568:
    lwz 3, 0x23c(31)
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x4182000C # beq .L_802C4580
    li 3, 0x0
    .4byte 0x48000090 # b .L_802C460C
L_802C4580:
    lwz 3, 0x23c(31)
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0xc(31)
    lfs 0, 0x4(3)
    stfs 0, 0x10(31)
    lfs 0, 0x8(3)
    stfs 0, 0x14(31)
    lwz 3, 0x23c(31)
    bl fn_8023DE58
    stw 3, 0x4(31)
    li 0, 0x5
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    addi 3, 31, 0xc
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x240(31)
    stfs 0, 0x14(31)
    lwz 4, 0x4(31)
    bl fn_8022461C
    clrlwi 0, 3, 16
    .4byte 0xC002DD0C # lfs f0, lbl_80540CAC@sda21(r0)
    cmplwi 0, 0x3
    stfs 0, 0x14(31)
    .4byte 0x4082001C # bne .L_802C4600
    mr 3, 31
    bl fn_801EE24C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802C4600
    li 3, 0x0
    .4byte 0x48000010 # b .L_802C460C
L_802C4600:
    li 0, 0x0
    li 3, 0x1
    stb 0, 0x2b0(31)
L_802C460C:
    clrlwi. 0, 3, 24
    .4byte 0x41820C54 # beq .L_802C5264
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_802C4638
    lbz 0, 0xcc(31)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_802C4658
    lwz 0, 0xd0(31)
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_802C4658
L_802C4638:
    bl GetRoomConfigRecord
    lwz 29, 0x18(3)
    bl GetRoomConfigRecord
    lwz 3, 0x14(3)
    clrlwi 0, 29, 24
    rlwimi 0, 3, 8, 16, 23
    sth 0, 0x2a8(31)
    .4byte 0x48000010 # b .L_802C4664
L_802C4658:
    lis 3, 0x1
    subi 0, 3, 0x1
    sth 0, 0x2a8(31)
L_802C4664:
    lwz 0, 0x240(31)
    cmplwi 0, 0xc
    .4byte 0x41810A88 # bgt .L_802C50F4
    lis 3, jumptable_804A8D2C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A8D2C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x0
    stw 0, 0x294(31)
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820024 # beq .L_802C46BC
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820A3C # bne .L_802C50F4
L_802C46BC:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DD30 # lfs f1, lbl_80540CD0@sda21(r0)
    li 5, 0x564
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    li 5, 0x503
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x72
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    li 4, 0x3
    bl fn_801F0D20
    li 0, 0x2
    mr 3, 31
    stw 0, 0x240(31)
    bl fn_801F355C
    lis 0, 0x2
    stw 0, 0xb0(31)
    .4byte 0x480009B0 # b .L_802C50F4
    li 0, 0x0
    stw 0, 0x294(31)
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820024 # beq .L_802C477C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082097C # bne .L_802C50F4
L_802C477C:
    .4byte 0xC002DD50 # lfs f0, lbl_80540CF0@sda21(r0)
    li 0, 0x4
    stfs 0, 0x14(31)
    stw 0, 0x240(31)
    bl SpatialRegistry_GetBase
    lis 4, 0x5345
    lwz 5, 0x4(31)
    addi 4, 4, 0x4e32
    addi 6, 31, 0xc
    li 7, 0x3c00
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 3, 31
    bl fn_801F355C
    lwz 3, 0x23c(31)
    lbz 0, 0x2b5(31)
    slwi 4, 3, 30
    lwz 5, 0x280(31)
    slwi 3, 0, 29
    lwz 0, 0x4(31)
    or 30, 4, 3
    rlwimi 30, 5, 24, 3, 7
    rlwimi 30, 0, 0, 24, 31
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_802C480C
    bl GetRoomConfigRecord
    lwz 29, 0x18(3)
    bl GetRoomConfigRecord
    lwz 3, 0x14(3)
    clrlslwi 0, 29, 24, 8
    rlwimi 0, 3, 16, 8, 15
    or 30, 30, 0
    .4byte 0x4800000C # b .L_802C4814
L_802C480C:
    lhz 0, 0x2aa(31)
    slwi 30, 0, 8
L_802C4814:
    lfs 3, 0x230(31)
    lfs 2, 0x234(31)
    lfs 1, 0xc(31)
    lfs 0, 0x10(31)
    stfs 3, 0x50(1)
    lwz 29, 0x238(31)
    stfs 2, 0x54(1)
    lwz 5, 0x50(1)
    stfs 1, 0x48(1)
    lwz 4, 0x54(1)
    stfs 0, 0x4c(1)
    lwz 3, 0x48(1)
    lwz 0, 0x4c(1)
    stw 5, 0x40(1)
    stw 4, 0x44(1)
    stw 3, 0x38(1)
    stw 0, 0x3c(1)
    bl GetRoomConfigRecord
    mr 6, 30
    mr 7, 29
    addi 4, 1, 0x38
    addi 5, 1, 0x40
    bl fn_802D6D70
    .4byte 0x48000884 # b .L_802C50F4
    mr 3, 31
    bl fn_802C2840
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820088 # beq .L_802C491C
    lbz 0, 0x2b2(31)
    cmplwi 0, 0x0
    .4byte 0x40820084 # bne .L_802C4924
    lfs 2, 0x40(31)
    .4byte 0xC022DD30 # lfs f1, lbl_80540CD0@sda21(r0)
    .4byte 0xC002DD18 # lfs f0, lbl_80540CB8@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x40(31)
    lfs 1, 0x40(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_802C48C8
    stfs 0, 0x40(31)
L_802C48C8:
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    psq_l 0, 0x3c(31), 0, 0
    li 4, 0x0
    li 5, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_802C4924
    li 0, 0x1
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    stb 0, 0x2b2(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    .4byte 0x4800000C # b .L_802C4924
L_802C491C:
    li 0, 0x1
    stb 0, 0x2b2(31)
L_802C4924:
    mr 3, 31
    bl fn_802C3AE4
    .4byte 0x480007C8 # b .L_802C50F4
    lwz 3, 0x284(31)
    subi 0, 3, 0x1
    stw 0, 0x284(31)
    lwz 0, 0x284(31)
    cmpwi 0, 0x0
    .4byte 0x408207B0 # bne .L_802C50F4
    li 3, 0x4
    li 0, 0x0
    stw 3, 0x240(31)
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    stb 0, 0x2b2(31)
    stfs 0, 0x40(31)
    .4byte 0x48000794 # b .L_802C50F4
    mr 3, 31
    bl fn_802C2840
    li 0, 0xff
    stb 0, 0x2ad(31)
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x418200EC # beq .L_802C4A68
    li 0, 0x0
    stw 0, 0xb0(31)
    stw 0, 0x294(31)
    lwz 3, 0xc8(31)
    bl fn_8023E7B0
    lfs 0, 0x0(3)
    stfs 0, 0xc(31)
    lfs 0, 0x4(3)
    stfs 0, 0x10(31)
    lfs 0, 0x8(3)
    stfs 0, 0x14(31)
    lwz 3, 0xc8(31)
    bl fn_8023DE58
    stw 3, 0x4(31)
    lwz 3, 0xc8(31)
    bl fn_8023BCD4
    stb 3, 0x2ad(31)
    lwz 0, 0xc8(31)
    stw 0, 0x290(31)
    lwz 3, 0x290(31)
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_802C4A54
    lwz 3, 0x290(31)
    bl fn_80234E30
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802C49F8
    li 0, 0x0
    stb 0, 0x2b4(31)
    .4byte 0x48000060 # b .L_802C4A54
L_802C49F8:
    lwz 3, 0x290(31)
    bl fn_8022D498
    cmpwi 3, 0x4
    .4byte 0x41820018 # beq .L_802C4A1C
    subi 0, 3, 0x7
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_802C4A1C
    cmpwi 3, 0x9
    .4byte 0x40820010 # bne .L_802C4A28
L_802C4A1C:
    li 0, 0x0
    stb 0, 0x2b4(31)
    .4byte 0x48000030 # b .L_802C4A54
L_802C4A28:
    cmpwi 3, 0x6
    .4byte 0x41820014 # beq .L_802C4A40
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_802C4A40
    cmpwi 3, 0x14
    .4byte 0x40820018 # bne .L_802C4A54
L_802C4A40:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_802C4A54
    li 0, 0x0
    stb 0, 0x2b4(31)
L_802C4A54:
    li 0, 0x1
    stb 0, 0x2b3(31)
    stb 0, 0x2af(31)
    stb 0, 0x2b5(31)
    .4byte 0x48000690 # b .L_802C50F4
L_802C4A68:
    lis 0, 0x2
    mr 3, 31
    stw 0, 0xb0(31)
    bl fn_802C2C30
    .4byte 0x4800067C # b .L_802C50F4
    lfs 2, 0x44(31)
    .4byte 0xC022DD28 # lfs f1, lbl_80540CC8@sda21(r0)
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x44(31)
    psq_l 2, 0xc(31), 0, 0
    psq_l 1, 0x3c(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0xc(31), 0, 0
    psq_l 2, 0x14(31), 1, 0
    psq_l 1, 0x44(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(31), 1, 0
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0x4080063C # bge .L_802C50F4
    stfs 0, 0x14(31)
    lis 4, 0x3
    li 0, 0x2
    mr 3, 31
    stfs 0, 0x44(31)
    addi 4, 4, 0x72
    li 5, 0x0
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x240(31)
    bl fn_801F0E34
    .4byte 0x4800060C # b .L_802C50F4
    li 0, 0x0
    stw 0, 0x294(31)
    bl SpatialRegistry_GetBase
    lwz 29, 0x1008(3)
    li 28, 0x0
    li 30, 0x0
    .4byte 0x4800009C # b .L_802C4BA0
L_802C4B08:
    bl SpatialRegistry_GetBase
    addi 0, 30, 0x8
    lwzx 0, 3, 0
    stw 0, 0x244(31)
    lwz 4, 0x244(31)
    cmplwi 4, 0x0
    .4byte 0x41820078 # beq .L_802C4B98
    lwz 3, 0x198(31)
    lwz 0, 0x198(4)
    cmpw 3, 0
    .4byte 0x41820068 # beq .L_802C4B98
    lwz 3, 0x4(4)
    lwz 0, 0x4(31)
    cmpw 3, 0
    .4byte 0x40820058 # bne .L_802C4B98
    lfs 1, 0xc(4)
    lfs 0, 0xc(31)
    .4byte 0xC042DCE8 # lfs f2, lbl_80540C88@sda21(r0)
    fsubs 0, 1, 0
    fabs 0, 0
    frsp 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800038 # bge .L_802C4B98
    lfs 1, 0x10(4)
    lfs 0, 0x10(31)
    fsubs 0, 1, 0
    fabs 0, 0
    frsp 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x4080001C # bge .L_802C4B98
    li 3, 0xb4
    li 0, 0x7
    stb 3, 0x2ad(31)
    stw 28, 0x28c(31)
    stw 0, 0x240(31)
    .4byte 0x480006D0 # b .L_802C5264
L_802C4B98:
    addi 30, 30, 0x4
    addi 28, 28, 0x1
L_802C4BA0:
    cmpw 28, 29
    .4byte 0x4180FF64 # blt .L_802C4B08
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000544 # b .L_802C50F4
    li 0, 0x0
    stw 0, 0x294(31)
    lwz 29, 0x28c(31)
    cmpwi 29, 0x0
    .4byte 0x418000F0 # blt .L_802C4CB4
    bl SpatialRegistry_GetBase
    slwi 0, 29, 2
    add 3, 3, 0
    lwz 0, 0x8(3)
    stw 0, 0x244(31)
    lwz 3, 0x244(31)
    cmplwi 3, 0x0
    .4byte 0x418200B4 # beq .L_802C4C98
    lfs 0, 0xc(3)
    stfs 0, 0x248(31)
    lfs 0, 0x10(3)
    stfs 0, 0x24c(31)
    lfs 0, 0x14(3)
    stfs 0, 0x250(31)
    lwz 3, 0x244(31)
    lwz 29, 0x4(3)
    cmpwi 29, 0x8
    .4byte 0x40800070 # bge .L_802C4C7C
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40820064 # bne .L_802C4C7C
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_802C4C30
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_802C4C34
L_802C4C30:
    addi 6, 3, 0xdc
L_802C4C34:
    lwz 0, 0x0(6)
    lwz 3, 0x244(31)
    stw 0, 0xac(1)
    lwz 5, 0x4(6)
    lfs 1, 0xc(3)
    lfs 0, 0xac(1)
    lwz 4, 0x8(6)
    lwz 0, 0xc(6)
    fsubs 0, 1, 0
    stw 5, 0xb0(1)
    stfs 0, 0x248(31)
    lfs 0, 0xb0(1)
    lwz 3, 0x244(31)
    stw 4, 0xb4(1)
    lfs 1, 0x10(3)
    stw 0, 0xb8(1)
    fsubs 0, 1, 0
    stfs 0, 0x24c(31)
L_802C4C7C:
    lfs 0, 0x248(31)
    stfs 0, 0xc(31)
    lfs 0, 0x24c(31)
    stfs 0, 0x10(31)
    lfs 0, 0x250(31)
    stfs 0, 0x14(31)
    .4byte 0x48000020 # b .L_802C4CB4
L_802C4C98:
    mr 3, 31
    li 4, 0x3
    bl fn_801F0D20
    li 0, -0x1
    .4byte 0xC002DD54 # lfs f0, lbl_80540CF4@sda21(r0)
    stw 0, 0x28c(31)
    stfs 0, 0x44(31)
L_802C4CB4:
    lwz 0, 0x28c(31)
    cmpwi 0, 0x0
    .4byte 0x40800438 # bge .L_802C50F4
    psq_l 2, 0xc(31), 0, 0
    psq_l 1, 0x3c(31), 0, 0
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0xc(31), 0, 0
    psq_l 2, 0x14(31), 1, 0
    psq_l 1, 0x44(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(31), 1, 0
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810018 # ble .L_802C4D04
    lfs 1, 0x44(31)
    .4byte 0xC002DCDC # lfs f0, lbl_80540C7C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
    .4byte 0x480003F4 # b .L_802C50F4
L_802C4D04:
    lwz 29, 0x280(31)
    cmpwi 29, 0x10
    .4byte 0x40800028 # bge .L_802C4D34
    stfs 0, 0x14(31)
    li 4, 0x0
    li 3, 0xff
    li 0, 0x2
    stfs 0, 0x44(31)
    stw 4, 0x27c(31)
    stb 3, 0x2ad(31)
    stw 0, 0x240(31)
    .4byte 0x480003C4 # b .L_802C50F4
L_802C4D34:
    bl SpatialRegistry_GetBase
    subi 0, 29, 0xf
    lis 4, 0x4c53
    oris 7, 0, 0x88
    lwz 5, 0x4(31)
    addi 4, 4, 0x5449
    addi 6, 31, 0xc
    ori 7, 7, 0x100
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800038C # b .L_802C50F4
    li 0, 0x0
    li 5, 0x0
    stw 0, 0x294(31)
    li 6, 0x0
    lwz 3, 0x278(31)
    lwz 4, 0x198(31)
    bl fn_8022F9E4
    clrlwi. 0, 3, 24
    .4byte 0x41820368 # beq .L_802C50F4
    li 0, 0x4
    stw 0, 0x240(31)
    .4byte 0x4800035C # b .L_802C50F4
    li 30, 0x0
    stw 30, 0x294(31)
L_802C4DA4:
    mr 3, 30
    bl fn_8023A51C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820188 # bne .L_802C4F3C
    lwz 29, 0x4(31)
    mr 3, 30
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x40820174 # bne .L_802C4F3C
    mr 3, 30
    bl fn_8023A478
    lfs 3, 0x0(3)
    lfs 0, 0xc(31)
    lfs 2, 0x4(3)
    lfs 1, 0x10(31)
    fsubs 3, 3, 0
    .4byte 0xC002DD58 # lfs f0, lbl_80540CF8@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4181013C # bgt .L_802C4F3C
    bl fn_8023A240
    xori 0, 3, 0x1
    cmpwi 0, 0x2
    .4byte 0x41820074 # beq .L_802C4E84
    .4byte 0x40800014 # bge .L_802C4E28
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802C4E34
    .4byte 0x4080003C # bge .L_802C4E5C
    .4byte 0x480000B0 # b .L_802C4ED4
L_802C4E28:
    cmpwi 0, 0x4
    .4byte 0x408000A8 # bge .L_802C4ED4
    .4byte 0x4800007C # b .L_802C4EAC
L_802C4E34:
    .4byte 0xC002DCF8 # lfs f0, lbl_80540C98@sda21(r0)
    .4byte 0xC022DCD4 # lfs f1, lbl_80540C74@sda21(r0)
    stfs 0, 0xa0(1)
    .4byte 0xC002DCF4 # lfs f0, lbl_80540C94@sda21(r0)
    stfs 1, 0xa4(1)
    psq_l 1, 0xa0(1), 0, 0
    stfs 0, 0xa8(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x4800009C # b .L_802C4EF4
L_802C4E5C:
    .4byte 0xC002DCEC # lfs f0, lbl_80540C8C@sda21(r0)
    .4byte 0xC022DCD4 # lfs f1, lbl_80540C74@sda21(r0)
    stfs 0, 0x94(1)
    .4byte 0xC002DCF4 # lfs f0, lbl_80540C94@sda21(r0)
    stfs 1, 0x98(1)
    psq_l 1, 0x94(1), 0, 0
    stfs 0, 0x9c(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x48000074 # b .L_802C4EF4
L_802C4E84:
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    .4byte 0xC022DCF8 # lfs f1, lbl_80540C98@sda21(r0)
    stfs 0, 0x88(1)
    .4byte 0xC002DCF4 # lfs f0, lbl_80540C94@sda21(r0)
    stfs 1, 0x8c(1)
    psq_l 1, 0x88(1), 0, 0
    stfs 0, 0x90(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x4800004C # b .L_802C4EF4
L_802C4EAC:
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    .4byte 0xC022DCEC # lfs f1, lbl_80540C8C@sda21(r0)
    stfs 0, 0x7c(1)
    .4byte 0xC002DCF4 # lfs f0, lbl_80540C94@sda21(r0)
    stfs 1, 0x80(1)
    psq_l 1, 0x7c(1), 0, 0
    stfs 0, 0x84(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x48000024 # b .L_802C4EF4
L_802C4ED4:
    .4byte 0xC022DCD4 # lfs f1, lbl_80540C74@sda21(r0)
    .4byte 0xC002DCF4 # lfs f0, lbl_80540C94@sda21(r0)
    stfs 1, 0x70(1)
    stfs 1, 0x74(1)
    psq_l 1, 0x70(1), 0, 0
    stfs 0, 0x78(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
L_802C4EF4:
    lis 0, 0x2
    li 3, 0x6
    stw 0, 0xb0(31)
    li 0, 0x4
    stw 3, 0x27c(31)
    stw 0, 0x240(31)
    bl GetRoomConfigRecord
    lwz 4, 0x16c(31)
    li 5, 0x1
    bl fn_802D7584
    li 0, 0x12c
    .4byte 0xC022DD5C # lfs f1, lbl_80540CFC@sda21(r0)
    stw 0, 0x288(31)
    lfs 0, 0x10(31)
    fadds 0, 0, 1
    stfs 0, 0x10(31)
    stfs 1, 0x14(31)
    .4byte 0x4800032C # b .L_802C5264
L_802C4F3C:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FE60 # blt .L_802C4DA4
    .4byte 0x480001AC # b .L_802C50F4
    li 0, 0x0
    stw 0, 0xb0(31)
    stw 0, 0x294(31)
    lbz 0, 0xcc(31)
    cmplwi 0, 0x0
    .4byte 0x418200B8 # beq .L_802C5018
    lwz 3, 0xd0(31)
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0xc(31)
    lfs 0, 0x4(3)
    stfs 0, 0x10(31)
    lfs 0, 0x8(3)
    stfs 0, 0x14(31)
    lwz 3, 0xd0(31)
    bl fn_8023DE58
    stw 3, 0x4(31)
    lwz 3, 0xd0(31)
    bl fn_8023BCD4
    stb 3, 0x2ad(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x4082014C # bne .L_802C50F4
    lwz 3, 0x29c(31)
    cmpwi 3, 0x1
    .4byte 0x41800140 # blt .L_802C50F4
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820130 # bne .L_802C50F4
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0xd
    .4byte 0x41820118 # beq .L_802C50F4
    cmplwi 0, 0x3b
    .4byte 0x41820110 # beq .L_802C50F4
    lwz 3, 0x29c(31)
    li 5, 0x0
    lwz 4, 0x198(31)
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi. 0, 3, 24
    .4byte 0x418200F4 # beq .L_802C50F4
    li 3, -0x1
    li 0, 0x4
    stw 3, 0x29c(31)
    stw 0, 0x240(31)
    .4byte 0x480000E0 # b .L_802C50F4
L_802C5018:
    li 0, 0x4
    stw 0, 0x240(31)
    .4byte 0x480000D4 # b .L_802C50F4
    lwz 3, 0x2a4(31)
    li 6, 0x1
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 5, 0x198(31)
    addi 7, 1, 0x64
    lwz 6, 0x4(31)
    li 4, 0x168
    psq_l 1, 0xc(31), 0, 0
    li 8, 0x4
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x6c(1)
    lwz 3, 0x2a4(31)
    bl fn_8038AD24
    li 0, 0xc
    stw 0, 0x240(31)
    .4byte 0x480001F4 # b .L_802C5264
    lwz 3, 0x2a4(31)
    li 6, 0x1
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x2a4(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418201C8 # beq .L_802C5264
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_802C50D4
    lwz 3, 0x2a0(31)
    li 4, 0x0
    bl fn_8023061C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408201A0 # bne .L_802C5264
    li 0, 0x2
    stw 0, 0x240(31)
    .4byte 0x48000194 # b .L_802C5264
L_802C50D4:
    li 3, 0x0
    bl fn_80230534
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820180 # bne .L_802C5264
    li 0, 0x2
    stw 0, 0x240(31)
    .4byte 0x48000174 # b .L_802C5264
L_802C50F4:
    lwz 0, 0x240(31)
    cmpwi 0, 0x2
    .4byte 0x41800048 # blt .L_802C5144
    cmpwi 0, 0x9
    .4byte 0x41820040 # beq .L_802C5144
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800034 # bge .L_802C5144
    lfs 2, 0x10(31)
    addi 4, 1, 0x58
    lfs 0, 0x14(31)
    lfs 1, 0xc(31)
    fsubs 2, 2, 0
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    stfs 1, 0x58(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x5c(1)
    stfs 0, 0x60(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_802C5144:
    lbz 0, 0x2b5(31)
    cmplwi 0, 0x0
    .4byte 0x41820118 # beq .L_802C5264
    lwz 3, 0x294(31)
    addi 0, 3, 0x1
    stw 0, 0x294(31)
    lwz 0, 0x294(31)
    cmpwi 0, 0x2c88
    .4byte 0x41800100 # blt .L_802C5264
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x294(31)
    stb 0, 0x2b0(31)
    lfs 1, 0x230(31)
    lfs 0, 0x234(31)
    stfs 1, 0x30(1)
    lwz 29, 0x238(31)
    stfs 0, 0x34(1)
    lwz 3, 0x30(1)
    lwz 0, 0x34(1)
    stw 3, 0x18(1)
    stw 0, 0x1c(1)
    bl GetRoomConfigRecord
    mr 5, 29
    addi 4, 1, 0x18
    bl fn_802D6C10
    lwz 3, 0x23c(31)
    lbz 0, 0x2b5(31)
    slwi 4, 3, 30
    lwz 5, 0x280(31)
    slwi 3, 0, 29
    lwz 0, 0x4(31)
    or 29, 4, 3
    rlwimi 29, 5, 24, 3, 7
    rlwimi 29, 0, 0, 24, 31
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_802C5200
    bl GetRoomConfigRecord
    lwz 30, 0x18(3)
    bl GetRoomConfigRecord
    lwz 3, 0x14(3)
    clrlslwi 0, 30, 24, 8
    rlwimi 0, 3, 16, 8, 15
    or 29, 29, 0
    .4byte 0x4800000C # b .L_802C5208
L_802C5200:
    lhz 0, 0x2aa(31)
    slwi 29, 0, 8
L_802C5208:
    lfs 3, 0x230(31)
    lfs 2, 0x234(31)
    lfs 1, 0xc(31)
    lfs 0, 0x10(31)
    stfs 3, 0x28(1)
    lwz 30, 0x238(31)
    stfs 2, 0x2c(1)
    lwz 5, 0x28(1)
    stfs 1, 0x20(1)
    lwz 4, 0x2c(1)
    stfs 0, 0x24(1)
    lwz 3, 0x20(1)
    lwz 0, 0x24(1)
    stw 5, 0x10(1)
    stw 4, 0x14(1)
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    bl GetRoomConfigRecord
    mr 6, 29
    mr 7, 30
    addi 4, 1, 0x8
    addi 5, 1, 0x10
    bl fn_802D6D70
L_802C5264:
    lwz 0, 0xd4(1)
    lwz 31, 0xcc(1)
    lwz 30, 0xc8(1)
    lwz 29, 0xc4(1)
    lwz 28, 0xc0(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

