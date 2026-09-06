.section extab, "a"
.balign 4
.global etb_8000DC1C
etb_8000DC1C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000DC1C, 8

.section extabindex, "a"
.balign 4
.global eti_8001D290
eti_8001D290:
    .4byte fn_8032B0A4
    .4byte 0x00000354
    .4byte etb_8000DC1C
.size eti_8001D290, 12

.text
.balign 4
.global fn_8032B0A4

# fn_8032B0A4(this) - RUPY's terrain/hazard interaction check, called
# from update()'s states 0/9 (extab_8032c664.s) as a boolean gate.
# Returns false immediately for subtype 0x23/0x24 or while still
# airborne (this->0x14 above a threshold). Otherwise classifies the
# terrain under this->0xc via `fn_8022461C` and reacts by code:
#   3 ("sink/void"): arms a long 1023-frame timer, zeroes velocity, and
#     forces state=5 (update()'s trivial "hide" state) - the rupee
#     sinks/falls out of the world and disappears.
#   0xe ("wet surface"): same 1023-frame timer + zeroed velocity/speed;
#     if not already in state 5, transitions there and distinguishes
#     water from a different hazard type via two unexplored room/area
#     checks (`fn_802DE9A0`, `fn_802DEB58`), playing a matching stereo
#     splash/hazard sound pair (`fn_801F0E34`) for whichever passes (or
#     neither). Either way, spawns a size-scaled pair of splash
#     particles (`fn_8013CC50`, panned left/right, effect ID and pitch
#     varying by size class) at its own position.
#   0xd ("bouncy surface"): sets a fixed rebound velocity (0x238=1.0,
#     a fixed upward 0x44 constant, 0x40/0x3c=0), and unless already in
#     state 6, arms a 30-frame timer, spawns the same size-scaled
#     splash-particle pair (fixed effect ID 0x3d0 this time), plays a
#     bounce sound (code 0x322), and transitions to state 6 - a spring/
#     trampoline-style bounce.
#   anything else: no interaction, returns false.
fn_8032B0A4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lhz 0, 0x94(3)
    cmplwi 0, 0x23
    .4byte 0x4182000C # beq .L_8032B0D4
    cmplwi 0, 0x24
    .4byte 0x4082000C # bne .L_8032B0DC
L_8032B0D4:
    li 3, 0x0
    .4byte 0x48000304 # b .L_8032B3DC
L_8032B0DC:
    lfs 1, 0x14(31)
    .4byte 0xC002EDF8 # lfs f0, lbl_80541D98@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_8032B0F4
    li 3, 0x0
    .4byte 0x480002EC # b .L_8032B3DC
L_8032B0F4:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x3
    .4byte 0x4082002C # bne .L_8032B134
    li 0, 0x3ff
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    stw 0, 0x24c(31)
    li 0, 0x5
    li 3, 0x1
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x230(31)
    .4byte 0x480002AC # b .L_8032B3DC
L_8032B134:
    cmpwi 0, 0xe
    .4byte 0x408201B0 # bne .L_8032B2E8
    li 0, 0x3ff
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    stw 0, 0x24c(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x238(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x5
    .4byte 0x41820180 # beq .L_8032B2E0
    li 0, 0x5
    stw 0, 0x230(31)
    bl fn_802DE9A0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_8032B19C
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x40
    li 30, 0x2a9
    li 29, 0x2aa
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800003C # b .L_8032B1D4
L_8032B19C:
    bl fn_802DEB58
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_8032B1CC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x3f
    li 30, 0x45e
    li 29, 0x45f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800000C # b .L_8032B1D4
L_8032B1CC:
    li 3, 0x1
    .4byte 0x4800020C # b .L_8032B3DC
L_8032B1D4:
    lwz 0, 0x268(31)
    cmpwi 0, 0x4
    .4byte 0x40800058 # bge .L_8032B234
    lwz 3, 0x4(31)
    mr 5, 30
    .4byte 0xC022EDFC # lfs f1, lbl_80541D9C@sda21(r0)
    addi 4, 31, 0xc
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    mr 5, 29
    .4byte 0xC022EDFC # lfs f1, lbl_80541D9C@sda21(r0)
    addi 4, 31, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480000B0 # b .L_8032B2E0
L_8032B234:
    cmpwi 0, 0x8
    .4byte 0x40800058 # bge .L_8032B290
    lwz 3, 0x4(31)
    mr 5, 30
    .4byte 0xC022EDF0 # lfs f1, lbl_80541D90@sda21(r0)
    addi 4, 31, 0xc
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    mr 5, 29
    .4byte 0xC022EDF0 # lfs f1, lbl_80541D90@sda21(r0)
    addi 4, 31, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000054 # b .L_8032B2E0
L_8032B290:
    lwz 3, 0x4(31)
    mr 5, 30
    .4byte 0xC022EE00 # lfs f1, lbl_80541DA0@sda21(r0)
    addi 4, 31, 0xc
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    mr 5, 29
    .4byte 0xC022EE00 # lfs f1, lbl_80541DA0@sda21(r0)
    addi 4, 31, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8032B2E0:
    li 3, 0x1
    .4byte 0x480000F8 # b .L_8032B3DC
L_8032B2E8:
    cmpwi 0, 0xd
    .4byte 0x408200EC # bne .L_8032B3D8
    .4byte 0xC042EDE8 # lfs f2, lbl_80541D88@sda21(r0)
    .4byte 0xC002EE04 # lfs f0, lbl_80541DA4@sda21(r0)
    stfs 2, 0x44(31)
    .4byte 0xC022EDF0 # lfs f1, lbl_80541D90@sda21(r0)
    stfs 2, 0x40(31)
    stfs 2, 0x3c(31)
    stfs 0, 0x44(31)
    stfs 1, 0x238(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x6
    .4byte 0x418200B0 # beq .L_8032B3C8
    li 0, 0x1e
    stw 0, 0x24c(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x4
    .4byte 0x40800030 # bge .L_8032B35C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EDFC # lfs f1, lbl_80541D9C@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800005C # b .L_8032B3B4
L_8032B35C:
    cmpwi 0, 0x8
    .4byte 0x4080002C # bge .L_8032B38C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_8032B3B4
L_8032B38C:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022EE00 # lfs f1, lbl_80541DA0@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8032B3B4:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x22
    li 5, 0x0
    bl fn_801F0E34
L_8032B3C8:
    li 0, 0x6
    li 3, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000008 # b .L_8032B3DC
L_8032B3D8:
    li 3, 0x0
L_8032B3DC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
