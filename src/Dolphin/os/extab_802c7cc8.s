.section extab, "a"
.balign 4
.global etb_8000CAB4
etb_8000CAB4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CAB4, 8

.section extabindex, "a"
.balign 4
.global eti_8001B988
eti_8001B988:
    .4byte fn_802C7CC8
    .4byte 0x00000614
    .4byte etb_8000CAB4
.size eti_8001B988, 12

.text
.balign 4
.global fn_802C7CC8

# fn_802C7CC8(this) - DOOR's real setParams(). Genuinely understood at the
# architectural level (the door-type x orientation position-offset
# dispatch, ~40 combinations, is survey-level rather than individually
# traced - each case follows the same 2-float-add shape, just with
# different constants/signs per wall orientation).
#
# 1. Unpacks the raw spawn-param word (`this->0x90`) into 5 sub-fields:
#    a 7-bit "door type" (`this->0x234`, 0-8ish), two 5-bit fields
#    (`this->0x238`="orientation/wall", `this->0x23c`), and 2 single-bit
#    flags (`this->0x240/0x24c`). Sets the initial open/closed state
#    (`this->0x230`) based on whether the door type is 0.
# 2. Dispatches on door TYPE (0-8) combined with the orientation
#    sub-field to apply one of several fixed position offsets to
#    `this->0xc/0x10` (X/Z) - snapping the door's collision/visual
#    origin to whichever wall/orientation it's configured for, matching
#    the classic "door mounted on N/S/E/W wall" placement convention.
# 3. **Flag-gated auto-open**: for higher door types, steps the CONFIRMED
#    real-time helper `GetRoomConfigRecord` then queries a global flag/switch
#    condition via `fn_802D49A8`/`fn_802D4ADC` (new - "is game-flag/switch
#    N set?", keyed by `this->0x244`) - if already satisfied at spawn
#    time, immediately fires ITS OWN `vtable[0x14]` (update()) once and
#    forces `this->0x230=5` (open) - i.e. a door whose unlock condition
#    was already met (e.g. a previously-solved puzzle) snaps open
#    immediately rather than waiting a frame.
fn_802C7CC8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    li 0, -0x1
    stw 31, 0x2c(1)
    mr 31, 3
    li 3, 0x0
    stw 30, 0x28(1)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x258(31), 0, 0
    stfs 0, 0x260(31)
    lwz 4, 0x90(31)
    clrlwi 4, 4, 25
    stw 4, 0x234(31)
    lwz 4, 0x90(31)
    extrwi 4, 4, 5, 20
    stw 4, 0x238(31)
    lwz 4, 0x90(31)
    extrwi 4, 4, 5, 15
    stw 4, 0x23c(31)
    lwz 4, 0x90(31)
    extrwi 4, 4, 1, 14
    stw 4, 0x240(31)
    lwz 4, 0x90(31)
    extrwi 4, 4, 1, 13
    stw 4, 0x24c(31)
    stw 3, 0x250(31)
    stw 0, 0x248(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802C7D50
    stw 3, 0x230(31)
    .4byte 0x4800000C # b .L_802C7D58
L_802C7D50:
    li 0, 0x1
    stw 0, 0x230(31)
L_802C7D58:
    .4byte 0xC002DDA0 # lfs f0, lbl_80540D40@sda21(r0)
    .4byte 0xC062DD74 # lfs f3, lbl_80540D14@sda21(r0)
    stfs 0, 0x60(31)
    stfs 0, 0x64(31)
    stfs 3, 0x68(31)
    stfs 3, 0x6c(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x6
    .4byte 0x418202BC # beq .L_802C8034
    .4byte 0x40800018 # bge .L_802C7D94
    cmpwi 0, 0x5
    .4byte 0x40800274 # bge .L_802C7FF8
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_802C7DA4
    .4byte 0x48000320 # b .L_802C80B0
L_802C7D94:
    cmpwi 0, 0x8
    .4byte 0x4182000C # beq .L_802C7DA4
    .4byte 0x40800314 # bge .L_802C80B0
    .4byte 0x480002D4 # b .L_802C8074
L_802C7DA4:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x418200D4 # beq .L_802C7E80
    .4byte 0x40800010 # bge .L_802C7DC0
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802C7DCC
    .4byte 0x480002F4 # b .L_802C80B0
L_802C7DC0:
    cmpwi 0, 0x3
    .4byte 0x408002EC # bge .L_802C80B0
    .4byte 0x48000174 # b .L_802C7F3C
L_802C7DCC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x2
    .4byte 0x41820068 # beq .L_802C7E3C
    .4byte 0x40800014 # bge .L_802C7DEC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802C7DF8
    .4byte 0x40800038 # bge .L_802C7E1C
    .4byte 0x480002C8 # b .L_802C80B0
L_802C7DEC:
    cmpwi 0, 0x4
    .4byte 0x408002C0 # bge .L_802C80B0
    .4byte 0x48000068 # b .L_802C7E5C
L_802C7DF8:
    lfs 2, 0xc(31)
    .4byte 0xC022DD90 # lfs f1, lbl_80540D30@sda21(r0)
    .4byte 0xC002DD94 # lfs f0, lbl_80540D34@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000298 # b .L_802C80B0
L_802C7E1C:
    lfs 0, 0xc(31)
    .4byte 0xC022DD90 # lfs f1, lbl_80540D30@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    lfs 0, 0x10(31)
    fadds 0, 0, 1
    stfs 0, 0x10(31)
    .4byte 0x48000278 # b .L_802C80B0
L_802C7E3C:
    lfs 0, 0xc(31)
    .4byte 0xC022DD90 # lfs f1, lbl_80540D30@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    lfs 0, 0x10(31)
    fadds 0, 0, 1
    stfs 0, 0x10(31)
    .4byte 0x48000258 # b .L_802C80B0
L_802C7E5C:
    lfs 2, 0xc(31)
    .4byte 0xC022DD94 # lfs f1, lbl_80540D34@sda21(r0)
    .4byte 0xC002DD90 # lfs f0, lbl_80540D30@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000234 # b .L_802C80B0
L_802C7E80:
    lwz 0, 0x238(31)
    cmpwi 0, 0x2
    .4byte 0x4182006C # beq .L_802C7EF4
    .4byte 0x40800014 # bge .L_802C7EA0
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802C7EAC
    .4byte 0x40800038 # bge .L_802C7ED0
    .4byte 0x48000214 # b .L_802C80B0
L_802C7EA0:
    cmpwi 0, 0x4
    .4byte 0x4080020C # bge .L_802C80B0
    .4byte 0x48000070 # b .L_802C7F18
L_802C7EAC:
    lfs 2, 0xc(31)
    .4byte 0xC022DDA4 # lfs f1, lbl_80540D44@sda21(r0)
    .4byte 0xC002DD94 # lfs f0, lbl_80540D34@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x480001E4 # b .L_802C80B0
L_802C7ED0:
    lfs 2, 0xc(31)
    .4byte 0xC022DDA4 # lfs f1, lbl_80540D44@sda21(r0)
    .4byte 0xC002DD90 # lfs f0, lbl_80540D30@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x480001C0 # b .L_802C80B0
L_802C7EF4:
    lfs 2, 0xc(31)
    .4byte 0xC022DD90 # lfs f1, lbl_80540D30@sda21(r0)
    .4byte 0xC002DDA4 # lfs f0, lbl_80540D44@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x4800019C # b .L_802C80B0
L_802C7F18:
    lfs 2, 0xc(31)
    .4byte 0xC022DD94 # lfs f1, lbl_80540D34@sda21(r0)
    .4byte 0xC002DDA4 # lfs f0, lbl_80540D44@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000178 # b .L_802C80B0
L_802C7F3C:
    lwz 0, 0x238(31)
    cmpwi 0, 0x2
    .4byte 0x4182006C # beq .L_802C7FB0
    .4byte 0x40800014 # bge .L_802C7F5C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802C7F68
    .4byte 0x40800038 # bge .L_802C7F8C
    .4byte 0x48000158 # b .L_802C80B0
L_802C7F5C:
    cmpwi 0, 0x4
    .4byte 0x40800150 # bge .L_802C80B0
    .4byte 0x48000070 # b .L_802C7FD4
L_802C7F68:
    lfs 2, 0xc(31)
    .4byte 0xC022DDA8 # lfs f1, lbl_80540D48@sda21(r0)
    .4byte 0xC002DD94 # lfs f0, lbl_80540D34@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000128 # b .L_802C80B0
L_802C7F8C:
    lfs 2, 0xc(31)
    .4byte 0xC022DDA8 # lfs f1, lbl_80540D48@sda21(r0)
    .4byte 0xC002DD90 # lfs f0, lbl_80540D30@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000104 # b .L_802C80B0
L_802C7FB0:
    lfs 2, 0xc(31)
    .4byte 0xC022DD90 # lfs f1, lbl_80540D30@sda21(r0)
    .4byte 0xC002DDA8 # lfs f0, lbl_80540D48@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x480000E0 # b .L_802C80B0
L_802C7FD4:
    lfs 2, 0xc(31)
    .4byte 0xC022DD94 # lfs f1, lbl_80540D34@sda21(r0)
    .4byte 0xC002DDA8 # lfs f0, lbl_80540D48@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x480000BC # b .L_802C80B0
L_802C7FF8:
    .4byte 0xC022DDAC # lfs f1, lbl_80540D4C@sda21(r0)
    li 0, 0x2
    .4byte 0xC002DDB0 # lfs f0, lbl_80540D50@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0xc(31)
    fadds 0, 0, 3
    stfs 0, 0xc(31)
    lfs 0, 0x10(31)
    fadds 0, 0, 3
    stfs 0, 0x10(31)
    stw 0, 0x230(31)
    .4byte 0x48000080 # b .L_802C80B0
L_802C8034:
    .4byte 0xC042DDB4 # lfs f2, lbl_80540D54@sda21(r0)
    li 0, 0x2
    .4byte 0xC002DD90 # lfs f0, lbl_80540D30@sda21(r0)
    stfs 2, 0x60(31)
    .4byte 0xC022DD60 # lfs f1, lbl_80540D00@sda21(r0)
    stfs 2, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0xc(31)
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    lfs 0, 0x10(31)
    fadds 0, 0, 1
    stfs 0, 0x10(31)
    stw 0, 0x230(31)
    .4byte 0x48000040 # b .L_802C80B0
L_802C8074:
    .4byte 0xC042DDAC # lfs f2, lbl_80540D4C@sda21(r0)
    li 0, 0x2
    .4byte 0xC022DDB0 # lfs f1, lbl_80540D50@sda21(r0)
    stfs 2, 0x60(31)
    .4byte 0xC002DD60 # lfs f0, lbl_80540D00@sda21(r0)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    lfs 1, 0xc(31)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    lfs 0, 0x10(31)
    fadds 0, 0, 3
    stfs 0, 0x10(31)
    stw 0, 0x230(31)
L_802C80B0:
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x264(31)
    stfs 1, 0x268(31)
    lfs 0, 0x60(31)
    stfs 0, 0x26c(31)
    lfs 0, 0x64(31)
    stfs 0, 0x270(31)
    lfs 0, 0x68(31)
    stfs 0, 0x274(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x278(31)
    lfs 1, 0x26c(31)
    lfs 0, 0x264(31)
    fadds 0, 1, 0
    stfs 0, 0x26c(31)
    lfs 1, 0x270(31)
    lfs 0, 0x268(31)
    fadds 0, 1, 0
    stfs 0, 0x270(31)
    lfs 1, 0x274(31)
    lfs 0, 0x264(31)
    fadds 0, 1, 0
    stfs 0, 0x274(31)
    lfs 1, 0x278(31)
    lfs 0, 0x268(31)
    fadds 0, 1, 0
    stfs 0, 0x278(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802C8140
    cmpwi 0, 0x2
    .4byte 0x40820034 # bne .L_802C8164
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_802C8164
L_802C8140:
    lfs 1, 0x25c(31)
    addi 3, 1, 0x18
    lfs 0, 0x258(31)
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    lwz 4, 0x4(31)
    bl fn_80226BC4
    stw 3, 0x244(31)
    .4byte 0x48000064 # b .L_802C81C4
L_802C8164:
    lwz 0, 0x238(31)
    cmpwi 0, 0x2
    .4byte 0x40800030 # bge .L_802C819C
    .4byte 0xC022DD60 # lfs f1, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x10
    lfs 0, 0x258(31)
    lfs 2, 0x25c(31)
    fadds 0, 1, 0
    stfs 2, 0x14(1)
    stfs 0, 0x10(1)
    lwz 4, 0x4(31)
    bl fn_80226BC4
    stw 3, 0x244(31)
    .4byte 0x4800002C # b .L_802C81C4
L_802C819C:
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x8
    lfs 1, 0x25c(31)
    lfs 0, 0x258(31)
    fadds 1, 2, 1
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    lwz 4, 0x4(31)
    bl fn_80226BC4
    stw 3, 0x244(31)
L_802C81C4:
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x4180000C # blt .L_802C81D8
    cmpwi 0, 0x4
    .4byte 0x4081000C # ble .L_802C81E0
L_802C81D8:
    cmpwi 0, 0x8
    .4byte 0x408200A0 # bne .L_802C827C
L_802C81E0:
    lwz 30, 0x4(31)
    cmpwi 30, 0x8
    .4byte 0x4080004C # bge .L_802C8234
    bl GetRoomConfigRecord
    lwz 0, 0x244(31)
    mr 4, 30
    clrlwi 5, 0, 16
    bl fn_802D49A8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200BC # bne .L_802C82C4
    li 0, 0x3
    mr 3, 31
    stw 0, 0x230(31)
    lwz 12, 0x0(31)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x48000094 # b .L_802C82C4
L_802C8234:
    bl GetRoomConfigRecord
    lwz 0, 0x244(31)
    mr 4, 30
    clrlwi 5, 0, 16
    bl fn_802D4ADC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820074 # bne .L_802C82C4
    li 0, 0x3
    mr 3, 31
    stw 0, 0x230(31)
    lwz 12, 0x0(31)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x4800004C # b .L_802C82C4
L_802C827C:
    cmpwi 0, 0x5
    .4byte 0x41800030 # blt .L_802C82B0
    bl GetRoomConfigRecord
    lwz 0, 0x244(31)
    lwz 4, 0x4(31)
    clrlwi 5, 0, 16
    bl fn_802D4ADC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_802C82C4
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x48000018 # b .L_802C82C4
L_802C82B0:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_802C82C4:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

