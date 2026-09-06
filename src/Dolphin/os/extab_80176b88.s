.section extab, "a"
.balign 4
.global etb_8000748C
etb_8000748C:
    .4byte 0x490A0000
    .4byte 0x00000000
.size etb_8000748C, 8

.section extabindex, "a"
.balign 4
.global eti_800140F8
eti_800140F8:
    .4byte fn_80176B88
    .4byte 0x00001D2C
    .4byte etb_8000748C
.size eti_800140F8, 12

# fn_80176B88(this) - WIZR (Wizzrobe)'s real update(). The largest
# function landed this session (1867 instructions, ~2x STAL's update) -
# read extensively (well over half) and genuinely understood at the
# architectural level; the later handful of the 17-case state jumptable
# (`jumptable_804A0F30`, `this->0x230` 0-0x10) are survey-level rather
# than individually traced, consistent with this project's established
# practice for its largest functions (e.g. SLR2's update in
# [[project_fsa_ddrk_slr2_full_depth]]).
#
# Confirmed structure, in call order:
# 1. **Special-mode gate**: if `this->0x2e5==1` and the spawn param's top
#    5 bits are set, calls the shared base virtual `vtable[0x34]` (same
#    call setParams makes); success sets `this->0x1a8=1`/`0x2e5=0` and
#    SKIPS THE ENTIRE REST of update() for this frame.
# 2. **Ambient-light sample**: for types {0-5} (the same bitmask range
#    checked in the dtor/vtable-0x44 hook), calls
#    `fn_8030C210(lbl_8053AB10->0x24, &this->0xc)` - samples the confirmed
#    fog/ambient-color sub-object (from [[project_fsa_core_systems_gap]]'s
#    camera-manager cluster) at this actor's own position.
# 3. **Frozen/stunned early-out**: `fn_801F3D94(this,1)`, same as STAL -
#    resets `this->0xb0`, sets idle pose, skips the rest.
# 4. **"Reset-and-drop" gate** (`this->0x2e4==1`): checks a fixed lookup
#    struct (`lbl_80466838`, 7 words) via `fn_801F2DB4`, and - unless a
#    pending-timer/`fn_801F2FAC` condition holds - forces a FULL reset to
#    state 8: `this->0x238/2e4/244=0`, `this->0x230=8`, idle pose - the
#    EXACT same state-8 reset `fn_80178D24` (vtable slot 0x44) performs,
#    confirming both paths converge on the same "abort and reset" state.
# 5. **Companion-Stalfos unlink sweep** (type==1): scans a 20-entry table
#    (`this+0x270..`, stride 4) of tracked companion indices, and for any
#    still resolving to a live pool entry (via the CONFIRMED
#    `SpatialRegistry_GetBase`+`fn_801F666C` registry lookup), invalidates the link
#    and force-sets the companion's OWN type field to 1 - i.e. WIZR can
#    actively sever a Stalfos's link back to it, not just the reverse.
# 6. **"Drop loot on defeat"** (type==3, the standout find): loops up to
#    7 candidate slots (from `lbl_804A0D50`'s per-instance table) spawning
#    `fn_801F8544(table, 'RUPY', this->4, &this->0xc, flags)` - a NEW
#    "spawn actor by 4CC code" primitive, spelled out explicitly as
#    `'RUPY'` (Rupee) - up to `this->0x2c4` times, then scatters each
#    freshly-spawned Rupee's position via 3 calls to `fn_80154744` (a new
#    trig/scatter helper) writing a circular offset into the spawned
#    actor's own position fields. **This is Wizzrobe's rupee-drop-on-
#    defeat mechanic**, confirmed by the literal FourCC.
# 7. **Position integration**: the same paired-single `ps_add` velocity
#    idiom seen in STAL, applied to `this->0xc/0x14` every frame
#    regardless of state.
# 8. **Player-target scan + teleport trigger** (state 0-ish path, seen
#    around `L_80177190`): loops all 4 players via `fn_8023E724(i)`,
#    picks the nearest via `fn_80154744`-based trig distance, stores the
#    chosen player index into `this->0x98`, then (once a timer expires)
#    fires the SAME 2-stage sound pair pattern as elsewhere
#    (`fn_8013CC50` with codes `0x50a`/`0x50b`) plus an `fn_801F0E34`
#    effect cue and 2 `fn_80154590` calls (a new visual/particle spawn
#    helper) - **this is the actual teleport-target-selection and
#    vanish-effect trigger**, tying together the 3 sound handles created
#    in setParams' teleport-variant blocks.
# 9. **Epilogue** (shared exit, matches STAL's shape): decrements 5
#    countdown timers with a floor of 0 (`this->0x238/23c/240/244/248`)
#    before the state jumptable dispatch.
#
# New helpers surfaced (none decompiled yet): `fn_8030C210` (ambient-light
# sample), `fn_801F2DB4`/`fn_801F2FAC` (reset-condition checks),
# `fn_801F8544` (spawn-by-4CC-code, sibling to the confirmed
# `fn_801F9484` dispatcher), `fn_80154744` (trig/scatter helper, called
# many times), `fn_8023E724` (per-player accessor), `fn_80178F10` (a
# WIZR-local helper, called with `this`+a position pointer - likely
# "move toward point"), `fn_80154590` (visual/particle spawn).
.text
.balign 4
.global fn_80176B88

fn_80176B88:
    stwu 1, -0x120(1)
    mflr 0
    stw 0, 0x124(1)
    stfd 31, 0x110(1)
    psq_st 31, 0x118(1), 0, 0
    stfd 30, 0x100(1)
    psq_st 30, 0x108(1), 0, 0
    stfd 29, 0xf0(1)
    psq_st 29, 0xf8(1), 0, 0
    stfd 28, 0xe0(1)
    psq_st 28, 0xe8(1), 0, 0
    stmw 23, 0xbc(1)
    .4byte 0xC002AC14 # lfs f0, lbl_8053DBB4@sda21(r0)
    li 0, 0x0
    lis 4, lbl_804A0D50@ha
    stw 0, 0x14(1)
    mr 31, 3
    stw 0, 0x10(1)
    addi 30, 4, lbl_804A0D50@l
    sth 0, 0x8(1)
    stfs 0, 0xc(1)
    lbz 0, 0x2e5(3)
    cmplwi 0, 0x1
    .4byte 0x40820038 # bne .L_80176C1C
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x4182002C # beq .L_80176C1C
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41821C78 # beq .L_80178880
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x1a8(31)
    stb 0, 0x2e5(31)
L_80176C1C:
    lhz 3, 0x94(31)
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_80176C50
    subi 0, 3, 0x4
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_80176C50
    subi 0, 3, 0x1
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80176C50
    cmplwi 3, 0x3
    .4byte 0x40820014 # bne .L_80176C60
L_80176C50:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
L_80176C60:
    mr 3, 31
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80176C90
    li 0, 0x0
    mr 3, 31
    stw 0, 0xb0(31)
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48001BF4 # b .L_80178880
L_80176C90:
    lbz 0, 0x2e4(31)
    cmplwi 0, 0x1
    .4byte 0x40820268 # bne .L_80176F00
    lis 4, lbl_80466838@ha
    lis 3, 0x4e55
    addi 28, 4, lbl_80466838@l
    lwz 27, 0x108(31)
    lwz 12, 0x0(28)
    addi 4, 3, 0x4c4c
    lwz 11, 0x4(28)
    mr 3, 31
    lwz 10, 0x8(28)
    mr 5, 4
    lwz 9, 0xc(28)
    addi 6, 1, 0x88
    lwz 8, 0x10(28)
    li 26, 0x0
    lwz 7, 0x14(28)
    lwz 0, 0x18(28)
    stw 12, 0x88(1)
    stw 11, 0x8c(1)
    stw 10, 0x90(1)
    stw 9, 0x94(1)
    stw 8, 0x98(1)
    stw 7, 0x9c(1)
    stw 0, 0xa0(1)
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_80176D24
    lwz 0, 0x108(31)
    cmpw 27, 0
    .4byte 0x4182000C # beq .L_80176D18
    li 26, 0x1
    .4byte 0x48000010 # b .L_80176D24
L_80176D18:
    li 0, 0x0
    stw 0, 0xd8(31)
    stw 0, 0xdc(31)
L_80176D24:
    clrlwi 0, 26, 24
    cmplwi 0, 0x1
    .4byte 0x41820014 # beq .L_80176D40
    mr 3, 31
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x418201C4 # beq .L_80176F00
L_80176D40:
    li 6, 0x0
    li 0, 0x8
    stw 6, 0x238(31)
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    stb 6, 0x2e4(31)
    stw 6, 0x244(31)
    stw 0, 0x230(31)
    bl fn_801F2618
    lwz 27, 0x268(31)
    cmpwi 27, 0x0
    .4byte 0x41800028 # blt .L_80176D98
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80176D90
    li 0, 0x0
    stw 0, 0x108(3)
L_80176D90:
    li 0, -0x1
    stw 0, 0x268(31)
L_80176D98:
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x41811AE0 # bgt .L_80178880
    lhz 0, 0x94(31)
    cmplwi 0, 0x1
    .4byte 0x4082004C # bne .L_80176DF8
    mr 27, 31
    li 25, 0x0
    li 29, -0x1
    li 28, 0x1
L_80176DC0:
    lwz 26, 0x270(27)
    cmpwi 26, 0x0
    .4byte 0x41800020 # blt .L_80176DE8
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80176DE8
    stw 29, 0x270(27)
    sth 28, 0x94(3)
L_80176DE8:
    addi 25, 25, 0x1
    addi 27, 27, 0x4
    cmpwi 25, 0x14
    .4byte 0x4180FFCC # blt .L_80176DC0
L_80176DF8:
    lwz 26, 0x2c8(31)
    cmpwi 26, 0x0
    .4byte 0x41820018 # beq .L_80176E18
    bl GetRoomConfigRecord
    mr 4, 26
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_80176E18:
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x40821A60 # bne .L_80178880
    addi 27, 30, 0x16c
    li 25, 0x0
    li 26, 0x7
    addi 27, 27, 0x1c
    .4byte 0x480000AC # b .L_80176EE0
L_80176E38:
    lwz 3, 0x0(27)
    cmpw 0, 3
    .4byte 0x41800094 # blt .L_80176ED4
    lwz 0, 0x2c4(31)
    subf 0, 3, 0
    stw 0, 0x2c4(31)
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 31, 0xc
    oris 7, 26, 0x22
    bl fn_801F8544
    mr. 28, 3
    .4byte 0x4180006C # blt .L_80176EDC
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    mr. 28, 3
    .4byte 0x41820058 # beq .L_80176EDC
    bl fn_80154744
    .4byte 0xC042AC1C # lfs f2, lbl_8053DBBC@sda21(r0)
    .4byte 0xC002AC18 # lfs f0, lbl_8053DBB8@sda21(r0)
    fnmsubs 0, 2, 1, 0
    stfs 0, 0x64(1)
    bl fn_80154744
    .4byte 0xC042AC1C # lfs f2, lbl_8053DBBC@sda21(r0)
    .4byte 0xC002AC18 # lfs f0, lbl_8053DBB8@sda21(r0)
    fnmsubs 0, 2, 1, 0
    stfs 0, 0x68(1)
    bl fn_80154744
    .4byte 0xC042AC24 # lfs f2, lbl_8053DBC4@sda21(r0)
    .4byte 0xC002AC20 # lfs f0, lbl_8053DBC0@sda21(r0)
    psq_l 3, 0x64(1), 0, 0
    fmadds 0, 2, 1, 0
    psq_st 3, 0x3c(28), 0, 0
    stfs 0, 0x6c(1)
    stfs 0, 0x44(28)
    .4byte 0x4800000C # b .L_80176EDC
L_80176ED4:
    subi 27, 27, 0x4
    subi 26, 26, 0x1
L_80176EDC:
    addi 25, 25, 0x1
L_80176EE0:
    lwz 0, 0x2c4(31)
    cmpwi 0, 0x0
    .4byte 0x40811998 # ble .L_80178880
    cmpwi 25, 0x64
    .4byte 0x40801990 # bge .L_80178880
    cmpwi 26, 0x0
    .4byte 0x4080FF40 # bge .L_80176E38
    .4byte 0x48001984 # b .L_80178880
L_80176F00:
    lhz 0, 0x94(31)
    cmplwi 0, 0xa
    .4byte 0x41820060 # beq .L_80176F68
    cmplwi 0, 0xb
    .4byte 0x41820058 # beq .L_80176F68
    cmplwi 0, 0x16
    .4byte 0x41820050 # beq .L_80176F68
    cmplwi 0, 0x17
    .4byte 0x41820048 # beq .L_80176F68
    cmplwi 0, 0x1f
    .4byte 0x41820040 # beq .L_80176F68
    lfs 1, 0x2e8(31)
    addi 3, 31, 0x3c
    .4byte 0xC042AC28 # lfs f2, lbl_8053DBC8@sda21(r0)
    .4byte 0xC062AC10 # lfs f3, lbl_8053DBB0@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2ec(31)
    addi 3, 31, 0x40
    .4byte 0xC042AC28 # lfs f2, lbl_8053DBC8@sda21(r0)
    .4byte 0xC062AC10 # lfs f3, lbl_8053DBB0@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2d4(31)
    addi 3, 31, 0x2d0
    .4byte 0xC042AC2C # lfs f2, lbl_8053DBCC@sda21(r0)
    lfs 3, 0x2d8(31)
    bl fn_801F71A4
L_80176F68:
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lbz 0, 0x2e4(31)
    cmplwi 0, 0x1
    .4byte 0x41820018 # beq .L_80176FA8
    lhz 0, 0x94(31)
    cmplwi 0, 0xa
    .4byte 0x4182000C # beq .L_80176FA8
    cmplwi 0, 0xb
    .4byte 0x40820018 # bne .L_80176FBC
L_80176FA8:
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
L_80176FBC:
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x40820014 # bne .L_80176FD8
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
L_80176FD8:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80176FEC
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_80176FEC:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80177000
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_80177000:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80177014
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_80177014:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80177028
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_80177028:
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017703C
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_8017703C:
    lwz 0, 0x230(31)
    cmplwi 0, 0x10
    .4byte 0x4181183C # bgt .L_80178880
    lis 3, jumptable_804A0F30@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A0F30@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x0
    stw 0, 0x24c(31)
    stw 0, 0x238(31)
    lhz 0, 0x94(31)
    cmpwi 0, 0x4
    .4byte 0x40800010 # bge .L_80177084
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_80177090
    .4byte 0x48000058 # b .L_801770D8
L_80177084:
    cmpwi 0, 0x6
    .4byte 0x40800050 # bge .L_801770D8
    .4byte 0x48000028 # b .L_801770B4
L_80177090:
    bl fn_80154744
    .4byte 0xC002AC30 # lfs f0, lbl_8053DBD0@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0xa8(1)
    lwz 3, 0xac(1)
    addi 0, 3, 0x1e
    stw 0, 0x23c(31)
    .4byte 0x48000048 # b .L_801770F8
L_801770B4:
    bl fn_80154744
    .4byte 0xC002AC34 # lfs f0, lbl_8053DBD4@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0xa8(1)
    lwz 3, 0xac(1)
    addi 0, 3, 0x32
    stw 0, 0x23c(31)
    .4byte 0x48000024 # b .L_801770F8
L_801770D8:
    bl fn_80154744
    .4byte 0xC002AC38 # lfs f0, lbl_8053DBD8@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0xa8(1)
    lwz 3, 0xac(1)
    addi 0, 3, 0x64
    stw 0, 0x23c(31)
L_801770F8:
    .4byte 0xC022AC14 # lfs f1, lbl_8053DBB4@sda21(r0)
    li 3, 0x0
    .4byte 0xC002AC20 # lfs f0, lbl_8053DBC0@sda21(r0)
    li 0, 0x1
    stfs 1, 0x2d4(31)
    stfs 0, 0x2d8(31)
    stw 3, 0xb0(31)
    stw 0, 0x230(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1e
    .4byte 0x40820200 # bne .L_80177320
    lwz 4, 0x198(31)
    mr 3, 31
    addi 6, 1, 0x14
    addi 8, 1, 0x10
    li 5, 0x0
    li 7, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_801EEC98
    .4byte 0xC022AC3C # lfs f1, lbl_8053DBDC@sda21(r0)
    addi 3, 31, 0x80
    .4byte 0xC062AC18 # lfs f3, lbl_8053DBB8@sda21(r0)
    fmr 2, 1
    fmr 4, 3
    bl fn_80154590
    addi 3, 1, 0x7c
    addi 4, 31, 0xc
    bl fn_80178F10
    lwz 0, 0x10(1)
    cmpwi 0, 0x0
    .4byte 0x41800180 # blt .L_801772F4
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC3A2AC40 # lfs f29, lbl_8053DBE0@sda21(r0)
    .4byte 0xC3C2AC14 # lfs f30, lbl_8053DBB4@sda21(r0)
    addi 28, 3, lbl_8052EBC0@l
    .4byte 0xC3E2AC44 # lfs f31, lbl_8053DBE4@sda21(r0)
    li 29, 0x0
L_80177190:
    lwz 3, 0x10(1)
    bl fn_8023E724
    mr 4, 3
    addi 3, 31, 0xc
    bl fn_80178F10
    lwz 0, 0x250(31)
    clrlslwi 0, 0, 30, 12
    lfsx 28, 28, 0
    bl fn_80154744
    fmadds 1, 29, 1, 29
    lfs 0, 0xc(31)
    fmadds 0, 1, 28, 0
    stfs 0, 0xc(31)
    bl fn_80154744
    lwz 0, 0x250(31)
    fmadds 2, 29, 1, 29
    lfs 0, 0x10(31)
    clrlslwi 0, 0, 30, 12
    add 3, 28, 0
    lfs 1, 0x4(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(31)
    stfs 30, 0x14(31)
    bl fn_80154744
    fmuls 0, 31, 1
    lwz 0, 0x250(31)
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    fctiwz 0, 0
    stfd 0, 0xa8(1)
    lwz 6, 0xac(1)
    add 6, 6, 0
    addi 0, 6, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    clrlwi 0, 0, 30
    stw 0, 0x250(31)
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x408200B8 # bne .L_801772E8
    lwz 4, 0x198(31)
    mr 3, 31
    addi 6, 1, 0x14
    li 5, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_801EEC98
    lwz 0, 0x14(1)
    cmpwi 0, -0x1
    .4byte 0x41820008 # beq .L_80177268
    stw 0, 0x98(31)
L_80177268:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AC10 # lfs f1, lbl_8053DBB0@sda21(r0)
    li 5, 0x50a
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AC10 # lfs f1, lbl_8053DBB0@sda21(r0)
    li 5, 0x50b
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x77
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC022AC48 # lfs f1, lbl_8053DBE8@sda21(r0)
    addi 3, 31, 0x80
    .4byte 0xC062AC4C # lfs f3, lbl_8053DBEC@sda21(r0)
    fmr 2, 1
    fmr 4, 3
    bl fn_80154590
    .4byte 0x4800159C # b .L_80178880
L_801772E8:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FEA0 # blt .L_80177190
L_801772F4:
    .4byte 0xC022AC48 # lfs f1, lbl_8053DBE8@sda21(r0)
    addi 3, 31, 0x80
    .4byte 0xC062AC4C # lfs f3, lbl_8053DBEC@sda21(r0)
    fmr 2, 1
    fmr 4, 3
    bl fn_80154590
    li 0, 0x1f
    addi 3, 31, 0xc
    stw 0, 0x23c(31)
    addi 4, 1, 0x7c
    bl fn_80178F10
L_80177320:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40821558 # bne .L_80178880
    lwz 3, 0x98(31)
    addi 5, 30, 0xac
    lwz 0, 0x24c(31)
    li 4, 0x6
    slwi 3, 3, 2
    .4byte 0xC022AC50 # lfs f1, lbl_8053DBF0@sda21(r0)
    add 0, 3, 0
    .4byte 0xC002AC24 # lfs f0, lbl_8053DBC4@sda21(r0)
    slwi 0, 0, 2
    li 3, 0xa
    lwzx 5, 5, 0
    li 0, 0x28
    stw 5, 0x260(31)
    stfs 1, 0x2d0(31)
    stfs 1, 0x2d4(31)
    stfs 0, 0x2d8(31)
    stw 4, 0x230(31)
    stw 3, 0x23c(31)
    stw 0, 0x238(31)
    .4byte 0x48001508 # b .L_80178880
    li 0, 0x2
    li 4, 0x1
    stw 0, 0xb0(31)
    li 3, 0x0
    li 0, 0x7
    stb 4, 0x2e4(31)
    stw 3, 0x24c(31)
    stw 3, 0x254(31)
    stw 3, 0x258(31)
    stw 0, 0x230(31)
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lhz 3, 0x94(31)
    cmplwi 3, 0x1
    .4byte 0x41820014 # beq .L_801773D0
    cmplwi 3, 0x2
    .4byte 0x4182000C # beq .L_801773D0
    cmplwi 3, 0x3
    .4byte 0x4082018C # bne .L_80177558
L_801773D0:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3
    .4byte 0x41810168 # bgt .L_80177540
    cmplwi 3, 0x3
    li 10, 0x1
    .4byte 0x40820008 # bne .L_801773EC
    li 10, 0x0
L_801773EC:
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0x14
    addi 7, 1, 0xc
    addi 8, 1, 0x10
    li 9, 0x0
    bl fn_801EEC98
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x41820060 # beq .L_80177474
    mr 27, 31
    li 25, 0x0
    li 29, -0x1
L_80177424:
    lwz 26, 0x270(27)
    cmpwi 26, 0x0
    .4byte 0x41800038 # blt .L_80177464
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820020 # bne .L_80177460
    stw 29, 0x270(27)
    lwz 3, 0x264(31)
    cmpwi 3, 0x0
    .4byte 0x40810014 # ble .L_80177464
    subi 0, 3, 0x1
    stw 0, 0x264(31)
    .4byte 0x48000008 # b .L_80177464
L_80177460:
    stw 29, 0x14(1)
L_80177464:
    addi 25, 25, 0x1
    addi 27, 27, 0x4
    cmpwi 25, 0x14
    .4byte 0x4180FFB4 # blt .L_80177424
L_80177474:
    lwz 0, 0x14(1)
    cmpwi 0, 0x0
    .4byte 0x41800008 # blt .L_80177484
    stw 0, 0x98(31)
L_80177484:
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x408200CC # bne .L_80177558
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_801774C4
    lwz 3, 0x2c4(31)
    subi 0, 3, 0x1
    stw 0, 0x2c4(31)
    lwz 0, 0x2c4(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801774BC
    li 0, 0x0
    stw 0, 0x2c4(31)
L_801774BC:
    li 0, 0x8
    stw 0, 0x248(31)
L_801774C4:
    lfs 1, 0xc(1)
    .4byte 0xC002AC40 # lfs f0, lbl_8053DBE0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800054 # bge .L_80177524
    li 0, 0x1
    lis 3, lbl_8052EBC0@ha
    stb 0, 0x234(31)
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022AC54 # lfs f1, lbl_8053DBF4@sda21(r0)
    lhz 4, 0x8(1)
    addis 4, 4, 0x1
    addi 4, 4, -0x8000
    rlwinm 0, 4, 30, 18, 28
    sth 4, 0x8(1)
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x2e8(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x2ec(31)
    .4byte 0x48000038 # b .L_80177558
L_80177524:
    li 0, 0x0
    .4byte 0xC002AC14 # lfs f0, lbl_8053DBB4@sda21(r0)
    stb 0, 0x234(31)
    stfs 0, 0x2f0(31)
    stfs 0, 0x2ec(31)
    stfs 0, 0x2e8(31)
    .4byte 0x4800001C # b .L_80177558
L_80177540:
    li 0, 0x0
    .4byte 0xC002AC14 # lfs f0, lbl_8053DBB4@sda21(r0)
    stb 0, 0x234(31)
    stfs 0, 0x2f0(31)
    stfs 0, 0x2ec(31)
    stfs 0, 0x2e8(31)
L_80177558:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3
    .4byte 0x408200F4 # bne .L_80177654
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x408200E8 # bne .L_80177654
    li 0, 0x14
    stw 0, 0x238(31)
    lwz 0, 0x14(1)
    cmpwi 0, 0x0
    .4byte 0x418000CC # blt .L_8017764C
    lwz 3, 0x10(1)
    bl fn_80236228
    cmpwi 3, 0x0
    .4byte 0x40810074 # ble .L_80177604
    lfs 1, 0xc(1)
    .4byte 0xC002AC58 # lfs f0, lbl_8053DBF8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800058 # bge .L_801775F8
    lwz 3, 0x254(31)
    addi 0, 3, 0x1
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x1e
    .4byte 0x4081009C # ble .L_80177654
    lwz 26, 0x268(31)
    cmpwi 26, 0x0
    .4byte 0x41800090 # blt .L_80177654
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_801775EC
    li 4, -0x1
    li 0, 0x0
    stw 4, 0x268(31)
    stw 0, 0x108(3)
L_801775EC:
    li 0, 0x0
    stw 0, 0x238(31)
    .4byte 0x48000060 # b .L_80177654
L_801775F8:
    li 0, 0x0
    stw 0, 0x254(31)
    .4byte 0x48000054 # b .L_80177654
L_80177604:
    lwz 3, 0x258(31)
    addi 0, 3, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x78
    .4byte 0x4081003C # ble .L_80177654
    bl SpatialRegistry_GetBase
    lwz 4, 0x268(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80177640
    li 4, -0x1
    li 0, 0x0
    stw 4, 0x268(31)
    stw 0, 0x108(3)
L_80177640:
    li 0, 0x0
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_80177654
L_8017764C:
    li 0, 0x0
    stw 0, 0x238(31)
L_80177654:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408203D0 # bne .L_80177A2C
    lwz 0, 0x24c(31)
    addi 3, 30, 0x50
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x238(31)
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3
    .4byte 0x40820328 # bne .L_801779B0
    lhz 25, 0x94(31)
    li 24, 0xa
    li 28, 0x15
    cmpwi 25, 0x1
    .4byte 0x4182000C # beq .L_801776A8
    cmpwi 25, 0x2
    .4byte 0x40820064 # bne .L_80177708
L_801776A8:
    mr 27, 31
    li 23, 0x0
    li 29, -0x1
L_801776B4:
    lwz 26, 0x270(27)
    cmpwi 26, 0x0
    .4byte 0x4180003C # blt .L_801776F8
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820020 # bne .L_801776F0
    stw 29, 0x270(27)
    lwz 3, 0x264(31)
    cmpwi 3, 0x0
    .4byte 0x40810018 # ble .L_801776F8
    subi 0, 3, 0x1
    stw 0, 0x264(31)
    .4byte 0x4800000C # b .L_801776F8
L_801776F0:
    li 25, 0x0
    .4byte 0x48000014 # b .L_80177708
L_801776F8:
    addi 23, 23, 0x1
    addi 27, 27, 0x4
    cmpwi 23, 0x14
    .4byte 0x4180FFB0 # blt .L_801776B4
L_80177708:
    cmpwi 25, 0x3
    .4byte 0x418201F4 # beq .L_80177900
    .4byte 0x40800014 # bge .L_80177724
    cmpwi 25, 0x0
    .4byte 0x418200FC # beq .L_80177814
    .4byte 0x408001D0 # bge .L_801778EC
    .4byte 0x48000290 # b .L_801779B0
L_80177724:
    cmpwi 25, 0x5
    .4byte 0x4182000C # beq .L_80177734
    .4byte 0x40800284 # bge .L_801779B0
    .4byte 0x480000E0 # b .L_80177810
L_80177734:
    bl SpatialRegistry_GetBase
    lis 4, 0x424f
    lwz 5, 0x4(31)
    addi 4, 4, 0x4942
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 28, 3
    .4byte 0x41800254 # blt .L_801779B0
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    lis 4, 0x3
    mr 29, 3
    mr 3, 31
    li 5, 0x0
    addi 4, 4, 0x35
    bl fn_801F0E34
    cmplwi 29, 0x0
    .4byte 0x41820074 # beq .L_801777FC
    lwz 3, 0x98(31)
    bl fn_801F6874
    extsh 0, 3
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC022AC5C # lfs f1, lbl_8053DBFC@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lwz 3, 0x98(31)
    lfsx 0, 4, 0
    fmuls 0, 1, 0
    stfs 0, 0x70(1)
    bl fn_801F6874
    extsh 0, 3
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC002AC14 # lfs f0, lbl_8053DBB4@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC042AC5C # lfs f2, lbl_8053DBFC@sda21(r0)
    add 3, 3, 0
    stfs 0, 0x78(1)
    lfs 1, 0x4(3)
    fmuls 1, 2, 1
    stfs 1, 0x74(1)
    psq_l 1, 0x70(1), 0, 0
    psq_st 1, 0x3c(29), 0, 0
    stfs 0, 0x44(29)
    lwz 0, 0x98(31)
    stw 0, 0x98(29)
L_801777FC:
    li 3, 0x3c
    li 0, 0x8
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x480001A4 # b .L_801779B0
L_80177810:
    li 24, 0xb
L_80177814:
    bl SpatialRegistry_GetBase
    lis 4, 0x5749
    lwz 5, 0x4(31)
    mr 7, 24
    addi 6, 31, 0xc
    addi 4, 4, 0x5a52
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 28, 3
    .4byte 0x41800174 # blt .L_801779B0
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    mr. 29, 3
    .4byte 0x41820074 # beq .L_801778C4
    lwz 3, 0x98(31)
    bl fn_801F6874
    extsh 0, 3
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC022AC5C # lfs f1, lbl_8053DBFC@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lwz 3, 0x98(31)
    lfsx 0, 4, 0
    fmuls 0, 1, 0
    stfs 0, 0x70(1)
    bl fn_801F6874
    extsh 0, 3
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC002AC14 # lfs f0, lbl_8053DBB4@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC042AC5C # lfs f2, lbl_8053DBFC@sda21(r0)
    add 3, 3, 0
    stfs 0, 0x78(1)
    lfs 1, 0x4(3)
    fmuls 1, 2, 1
    stfs 1, 0x74(1)
    psq_l 1, 0x70(1), 0, 0
    psq_st 1, 0x3c(29), 0, 0
    stfs 0, 0x44(29)
    lwz 0, 0x98(31)
    stw 0, 0x98(29)
L_801778C4:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x79
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x3c
    li 0, 0x8
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x480000C8 # b .L_801779B0
L_801778EC:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x78
    li 5, 0x0
    bl fn_801F0E34
L_80177900:
    addi 3, 1, 0x7c
    addi 4, 31, 0xc
    bl fn_80178F10
    .4byte 0xC022AC60 # lfs f1, lbl_8053DC00@sda21(r0)
    cmpwi 25, 0x1
    stfs 1, 0x84(1)
    .4byte 0x40820014 # bne .L_8017792C
    .4byte 0xC002AC1C # lfs f0, lbl_8053DBBC@sda21(r0)
    li 28, 0x14
    fsubs 0, 1, 0
    stfs 0, 0x84(1)
L_8017792C:
    cmpwi 25, 0x3
    .4byte 0x4082000C # bne .L_8017793C
    li 28, 0x1e
    .4byte 0x48000010 # b .L_80177948
L_8017793C:
    lwz 3, 0x238(31)
    addi 0, 3, 0xa
    stw 0, 0x238(31)
L_80177948:
    bl SpatialRegistry_GetBase
    lis 4, 0x5749
    lwz 5, 0x4(31)
    mr 7, 28
    addi 6, 1, 0x7c
    addi 4, 4, 0x5a52
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x268(31)
    lwz 3, 0x268(31)
    cmpwi 3, 0x0
    .4byte 0x41800038 # blt .L_801779B0
    lwz 0, 0x270(31)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8017798C
    stw 3, 0x270(31)
L_8017798C:
    bl SpatialRegistry_GetBase
    lwz 4, 0x268(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_801779B0
    lwz 0, 0x238(31)
    stw 0, 0x238(3)
    lwz 0, 0x198(31)
    stw 0, 0x26c(3)
L_801779B0:
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x41820024 # beq .L_801779DC
    lwz 0, 0x24c(31)
    cmpwi 0, 0x4
    .4byte 0x40820018 # bne .L_801779DC
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x79
    li 5, 0x0
    bl fn_801F0E34
L_801779DC:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x4
    .4byte 0x40810048 # ble .L_80177A2C
    lhz 0, 0x94(31)
    cmplwi 0, 0x3
    .4byte 0x40820028 # bne .L_80177A18
    bl SpatialRegistry_GetBase
    lwz 4, 0x268(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80177A18
    li 4, -0x1
    li 0, 0x0
    stw 4, 0x268(31)
    stw 0, 0x108(3)
L_80177A18:
    li 3, 0x3c
    li 0, 0x8
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x48000E58 # b .L_80178880
L_80177A2C:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820E4C # bne .L_80178880
    lwz 0, 0x98(31)
    addi 3, 30, 0x0
    lwz 4, 0x24c(31)
    mulli 0, 0, 0x5
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x260(31)
    .4byte 0x48000E28 # b .L_80178880
    .4byte 0xC002AC14 # lfs f0, lbl_8053DBB4@sda21(r0)
    stfs 0, 0x2f0(31)
    stfs 0, 0x2ec(31)
    stfs 0, 0x2e8(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820E00 # bne .L_80178880
    li 3, 0x0
    li 0, 0x9
    stw 3, 0x24c(31)
    stw 0, 0x230(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820DE4 # bne .L_80178880
    lwz 3, 0x98(31)
    li 5, 0x0
    lwz 0, 0x24c(31)
    addi 4, 30, 0xfc
    slwi 6, 3, 2
    addi 3, 30, 0x13c
    stb 5, 0x2e4(31)
    add 0, 6, 0
    slwi 0, 0, 2
    .4byte 0xC022AC14 # lfs f1, lbl_8053DBB4@sda21(r0)
    stw 5, 0xb0(31)
    .4byte 0xC002AC20 # lfs f0, lbl_8053DBC0@sda21(r0)
    lwzx 0, 4, 0
    stw 0, 0x260(31)
    lwz 0, 0x24c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x238(31)
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    stfs 1, 0x2d4(31)
    stfs 0, 0x2d8(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3
    .4byte 0x40810D7C # ble .L_80178880
    li 0, 0xa
    stw 0, 0x230(31)
    .4byte 0x48000D70 # b .L_80178880
    li 3, 0x0
    li 0, 0xb
    stw 3, 0x24c(31)
    stw 0, 0x230(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820D54 # bne .L_80178880
    li 0, 0x3
    addi 3, 30, 0x14c
    stw 0, 0x238(31)
    lwz 0, 0x24c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x260(31)
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3
    .4byte 0x40810D20 # ble .L_80178880
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000D14 # b .L_80178880
    lwz 3, 0x300(31)
    cmplwi 3, 0x0
    .4byte 0x40820208 # bne .L_80177D80
    lhz 0, 0x94(31)
    cmpwi 0, 0xb
    .4byte 0x41820044 # beq .L_80177BC8
    .4byte 0x40800098 # bge .L_80177C20
    cmpwi 0, 0xa
    .4byte 0x40800008 # bge .L_80177B98
    .4byte 0x4800008C # b .L_80177C20
L_80177B98:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AC10 # lfs f1, lbl_8053DBB0@sda21(r0)
    li 5, 0x50c
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x300(31)
    .4byte 0x4800005C # b .L_80177C20
L_80177BC8:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AC10 # lfs f1, lbl_8053DBB0@sda21(r0)
    li 5, 0x19b
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x300(31)
    addi 4, 31, 0xc
    .4byte 0xC022AC10 # lfs f1, lbl_8053DBB0@sda21(r0)
    li 5, 0x19b
    lwz 3, 0x4(31)
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x304(31)
L_80177C20:
    lwz 0, 0x300(31)
    cmplwi 0, 0x0
    .4byte 0x41820104 # beq .L_80177D2C
    lhz 0, 0x94(31)
    cmpwi 0, 0xa
    .4byte 0x408200C0 # bne .L_80177CF4
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4182006C # beq .L_80177CAC
    .4byte 0x40800014 # bge .L_80177C58
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80177C64
    .4byte 0x40800038 # bge .L_80177C88
    .4byte 0x480000D8 # b .L_80177D2C
L_80177C58:
    cmpwi 0, 0x4
    .4byte 0x408000D0 # bge .L_80177D2C
    .4byte 0x48000070 # b .L_80177CD0
L_80177C64:
    .4byte 0xC042AC14 # lfs f2, lbl_8053DBB4@sda21(r0)
    addi 3, 1, 0x4c
    .4byte 0xC022AC10 # lfs f1, lbl_8053DBB0@sda21(r0)
    fmr 3, 2
    bl fn_80178F00
    mr 4, 3
    lwz 3, 0x300(31)
    bl fn_80178EE4
    .4byte 0x480000A8 # b .L_80177D2C
L_80177C88:
    .4byte 0xC042AC14 # lfs f2, lbl_8053DBB4@sda21(r0)
    addi 3, 1, 0x40
    .4byte 0xC022AC64 # lfs f1, lbl_8053DC04@sda21(r0)
    fmr 3, 2
    bl fn_80178F00
    mr 4, 3
    lwz 3, 0x300(31)
    bl fn_80178EE4
    .4byte 0x48000084 # b .L_80177D2C
L_80177CAC:
    .4byte 0xC022AC14 # lfs f1, lbl_8053DBB4@sda21(r0)
    addi 3, 1, 0x34
    .4byte 0xC062AC10 # lfs f3, lbl_8053DBB0@sda21(r0)
    fmr 2, 1
    bl fn_80178F00
    mr 4, 3
    lwz 3, 0x300(31)
    bl fn_80178EE4
    .4byte 0x48000060 # b .L_80177D2C
L_80177CD0:
    .4byte 0xC022AC14 # lfs f1, lbl_8053DBB4@sda21(r0)
    addi 3, 1, 0x28
    .4byte 0xC062AC64 # lfs f3, lbl_8053DC04@sda21(r0)
    fmr 2, 1
    bl fn_80178F00
    mr 4, 3
    lwz 3, 0x300(31)
    bl fn_80178EE4
    .4byte 0x4800003C # b .L_80177D2C
L_80177CF4:
    lwz 0, 0x98(31)
    addi 5, 30, 0x15c
    addi 3, 1, 0x20
    li 4, 0x0
    slwi 0, 0, 2
    li 6, 0x0
    lwzx 5, 5, 0
    bl fn_80178ED4
    lwz 6, 0x300(31)
    lha 3, 0x20(1)
    lha 4, 0x22(1)
    addi 6, 6, 0x68
    lha 5, 0x24(1)
    bl fn_800EF008
L_80177D2C:
    lhz 0, 0x94(31)
    cmpwi 0, 0xb
    .4byte 0x408200E8 # bne .L_80177E1C
    lwz 0, 0x304(31)
    cmplwi 0, 0x0
    .4byte 0x418200DC # beq .L_80177E1C
    lwz 0, 0x98(31)
    addi 5, 30, 0x15c
    addi 3, 1, 0x18
    li 4, 0x0
    slwi 0, 0, 2
    li 6, 0x0
    lwzx 5, 5, 0
    bl fn_80178ED4
    lwz 6, 0x304(31)
    lha 3, 0x18(1)
    lha 4, 0x1a(1)
    addi 6, 6, 0x68
    lha 5, 0x1c(1)
    bl fn_800EF008
    .4byte 0x480000A0 # b .L_80177E1C
L_80177D80:
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
    lhz 0, 0x94(31)
    cmpwi 0, 0xb
    .4byte 0x40820080 # bne .L_80177E1C
    lwz 3, 0x304(31)
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082005C # bne .L_80177E1C
    addi 3, 1, 0x7c
    addi 4, 31, 0xc
    bl fn_80178F10
    lwz 0, 0x98(31)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820014 # bne .L_80177DEC
    lfs 1, 0x80(1)
    .4byte 0xC002AC4C # lfs f0, lbl_8053DBEC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x80(1)
L_80177DEC:
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    lis 7, 0x1
    lwz 5, 0x4(31)
    addi 4, 4, 0x5a45
    addi 6, 1, 0x7c
    subi 7, 7, 0x1f40
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    li 0, 0x5
    stw 0, 0x238(31)
L_80177E1C:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x240(31)
    mr 29, 3
    cmpwi 0, 0x0
    .4byte 0x41820030 # beq .L_80177E68
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80177E60
    .4byte 0xC022AC14 # lfs f1, lbl_8053DBB4@sda21(r0)
    addi 3, 31, 0xc
    lwz 4, 0x4(31)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80177E68
L_80177E60:
    clrlwi. 0, 29, 24
    .4byte 0x41820A1C # beq .L_80178880
L_80177E68:
    li 0, 0x0
    stb 0, 0x11c(31)
    lhz 0, 0x94(31)
    cmpwi 0, 0xb
    .4byte 0x4082002C # bne .L_80177EA4
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AC10 # lfs f1, lbl_8053DBB0@sda21(r0)
    li 5, 0x19d
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80177EA4:
    lwz 4, 0x300(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80177EC4
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_80177EC4:
    lwz 4, 0x304(31)
    cmplwi 4, 0x0
    .4byte 0x418209B4 # beq .L_80178880
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
    .4byte 0x4800099C # b .L_80178880
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x40820078 # bne .L_80177F68
    lwz 4, 0x300(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80177F14
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_80177F14:
    lwz 4, 0x304(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80177F34
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_80177F34:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x2dc(31)
    li 5, 0x509
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800091C # b .L_80178880
L_80177F68:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820910 # bne .L_80178880
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0x14
    addi 8, 1, 0x10
    li 7, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_801EEC98
    lwz 0, 0x10(1)
    cmpwi 0, 0x0
    .4byte 0x41800054 # blt .L_80177FF4
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC022AC18 # lfs f1, lbl_8053DBB8@sda21(r0)
    extsh 3, 0
    li 0, 0xe
    rlwinm 3, 3, 30, 18, 28
    lfsx 0, 4, 3
    fmuls 0, 1, 0
    stfs 0, 0x2e8(31)
    lhz 3, 0x8(1)
    rlwinm 3, 3, 30, 18, 28
    add 3, 4, 3
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x2ec(31)
    lwz 3, 0x10(1)
    stw 3, 0x24c(31)
    stw 0, 0x230(31)
    .4byte 0x48000890 # b .L_80178880
L_80177FF4:
    lwz 4, 0x300(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80178014
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_80178014:
    lwz 4, 0x304(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80178034
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_80178034:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x2dc(31)
    li 5, 0x509
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800081C # b .L_80178880
    lwz 4, 0x198(31)
    mr 3, 31
    lwz 9, 0x24c(31)
    addi 5, 1, 0x8
    addi 6, 1, 0x14
    addi 7, 1, 0xc
    addi 8, 1, 0x10
    li 10, 0x2
    bl fn_801EEC98
    lwz 3, 0x300(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801780A0
    addi 4, 31, 0xc
    bl fn_80178EB8
L_801780A0:
    lwz 3, 0x304(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801780B4
    addi 4, 31, 0xc
    bl fn_80178EB8
L_801780B4:
    lwz 0, 0x10(1)
    cmpwi 0, 0x0
    .4byte 0x40800078 # bge .L_80178134
    lwz 4, 0x300(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_801780E0
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_801780E0:
    lwz 4, 0x304(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80178100
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_80178100:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x2dc(31)
    li 5, 0x509
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000750 # b .L_80178880
L_80178134:
    lwz 0, 0x14(1)
    cmpwi 0, -0x1
    .4byte 0x4182003C # beq .L_80178178
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022AC18 # lfs f1, lbl_8053DBB8@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x2e8(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x2ec(31)
L_80178178:
    lfs 1, 0xc(1)
    .4byte 0xC002AC1C # lfs f0, lbl_8053DBBC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408006FC # bge .L_80178880
    .4byte 0xC002AC14 # lfs f0, lbl_8053DBB4@sda21(r0)
    li 0, 0x0
    li 23, 0x4
    li 30, 0x16
    stfs 0, 0x2f0(31)
    stfs 0, 0x2ec(31)
    stfs 0, 0x2e8(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x24c(31)
    stw 0, 0x250(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x15
    .4byte 0x4082000C # bne .L_801781CC
    li 30, 0x17
    li 23, 0x14
L_801781CC:
    li 24, 0x0
    lis 29, 0x5749
    .4byte 0x48000068 # b .L_8017823C
L_801781D8:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    mr 7, 30
    addi 4, 29, 0x5a52
    addi 6, 31, 0xc
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x268(31)
    lwz 26, 0x268(31)
    cmpwi 26, 0x0
    .4byte 0x41800034 # blt .L_80178238
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_80178238
    lis 0, 0x1
    divw 0, 0, 23
    clrlwi 0, 0, 16
    mullw 0, 24, 0
    sth 0, 0x2cc(3)
    lwz 0, 0x26c(31)
    stw 0, 0x26c(3)
L_80178238:
    addi 24, 24, 0x1
L_8017823C:
    cmpw 24, 23
    .4byte 0x4180FF98 # blt .L_801781D8
    lwz 4, 0x300(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80178264
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_80178264:
    lwz 4, 0x304(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80178284
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_80178284:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x2dc(31)
    li 5, 0x509
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    cmplwi 30, 0x16
    .4byte 0x40820030 # bne .L_801782E0
    lwz 26, 0x26c(31)
    cmpwi 26, 0x0
    .4byte 0x41800024 # blt .L_801782E0
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801782E0
    lwz 4, 0x25c(3)
    addi 0, 4, 0x1
    stw 0, 0x25c(3)
L_801782E0:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000598 # b .L_80178880
    addi 3, 31, 0xc
    addi 4, 31, 0x2f4
    bl fn_80178F10
    lhz 0, 0x2cc(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    lfs 2, 0x2e0(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0xc(31)
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
    lhz 0, 0x2cc(31)
    lfs 2, 0x2e0(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x10(31)
    add 3, 3, 0
    lfs 1, 0x4(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(31)
    lwz 3, 0x300(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80178350
    addi 4, 31, 0xc
    bl fn_80178EB8
L_80178350:
    lwz 3, 0x304(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80178364
    addi 4, 31, 0xc
    bl fn_80178EB8
L_80178364:
    lfs 1, 0x2e0(31)
    .4byte 0xC002AC18 # lfs f0, lbl_8053DBB8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x2e0(31)
    lhz 3, 0x2cc(31)
    addi 0, 3, 0x500
    sth 0, 0x2cc(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408204F8 # bne .L_80178880
    addi 3, 1, 0x7c
    addi 4, 31, 0xc
    bl fn_80178F10
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC3E2AC60 # lfs f31, lbl_8053DC00@sda21(r0)
    addi 30, 3, lbl_8052EBC0@l
    li 29, 0x0
L_801783A8:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x40820174 # bne .L_80178530
    .4byte 0xC022AC14 # lfs f1, lbl_8053DBB4@sda21(r0)
    addi 3, 1, 0x7c
    lwz 4, 0x4(31)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x4082015C # bne .L_80178530
    lhz 0, 0x94(31)
    lis 3, 0x504f
    addi 23, 3, 0x504f
    li 24, 0x1
    cmplwi 0, 0x16
    .4byte 0x40820014 # bne .L_80178400
    lis 3, 0x5354
    li 24, 0x5
    addi 23, 3, 0x414c
    .4byte 0x48000014 # b .L_80178410
L_80178400:
    cmplwi 0, 0x1f
    .4byte 0x4082000C # bne .L_80178410
    addi 23, 3, 0x4f48
    li 24, 0x0
L_80178410:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    mr 4, 23
    mr 7, 24
    addi 6, 1, 0x7c
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x268(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x418000F4 # blt .L_80178530
    lwz 4, 0x300(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80178460
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_80178460:
    lwz 4, 0x304(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80178480
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_80178480:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x2dc(31)
    li 5, 0x509
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lhz 0, 0x94(31)
    cmplwi 0, 0x16
    .4byte 0x4082003C # bne .L_801784EC
    bl SpatialRegistry_GetBase
    lwz 4, 0x268(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_801784EC
    .4byte 0xC022AC14 # lfs f1, lbl_8053DBB4@sda21(r0)
    .4byte 0xC002AC68 # lfs f0, lbl_8053DC08@sda21(r0)
    stfs 1, 0x5c(1)
    stfs 1, 0x58(1)
    psq_l 2, 0x58(1), 0, 0
    stfs 1, 0x60(1)
    psq_st 2, 0x3c(3), 0, 0
    stfs 0, 0x60(1)
    stfs 0, 0x44(3)
L_801784EC:
    lwz 26, 0x26c(31)
    cmpwi 26, 0x0
    .4byte 0x4180003C # blt .L_80178530
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182006C # beq .L_80178574
    lwz 0, 0x264(3)
    lwz 5, 0x268(31)
    slwi 0, 0, 2
    add 4, 3, 0
    stw 5, 0x270(4)
    lwz 4, 0x264(3)
    addi 0, 4, 0x1
    stw 0, 0x264(3)
    .4byte 0x48000048 # b .L_80178574
L_80178530:
    addi 3, 1, 0x7c
    addi 4, 31, 0xc
    bl fn_80178F10
    addi 0, 29, 0x1
    addi 29, 29, 0x1
    clrlslwi 0, 0, 30, 12
    lfs 2, 0x7c(1)
    add 3, 30, 0
    lfs 0, 0x80(1)
    lfs 3, 0x0(3)
    cmpwi 29, 0x4
    lfs 1, 0x4(3)
    fmadds 2, 31, 3, 2
    fmadds 0, 31, 1, 0
    stfs 2, 0x7c(1)
    stfs 0, 0x80(1)
    .4byte 0x4180FE38 # blt .L_801783A8
L_80178574:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000304 # b .L_80178880
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x418202B0 # beq .L_80178838
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x7c
    li 5, 0x0
    bl fn_801F0E34
    lwz 26, 0x26c(31)
    cmpwi 26, 0x0
    .4byte 0x41800074 # blt .L_8017861C
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    mr. 4, 3
    .4byte 0x41820060 # beq .L_8017861C
    addi 3, 31, 0xc
    addi 4, 4, 0xc
    bl fn_80178F10
    lfs 1, 0x10(31)
    .4byte 0xC002AC60 # lfs f0, lbl_8053DC00@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    lwz 3, 0x300(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_801785FC
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
L_801785FC:
    lwz 3, 0x304(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8017861C
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
L_8017861C:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082025C # bne .L_80178880
    .4byte 0xC002AC64 # lfs f0, lbl_8053DC04@sda21(r0)
    li 0, -0x1
    stw 0, 0x10(1)
    li 23, 0x0
    li 24, 0x0
    stfs 0, 0xc(1)
    stw 0, 0x14(1)
L_80178644:
    mr 3, 24
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820110 # beq .L_80178760
    mr 3, 24
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820100 # bne .L_80178760
    mr 3, 24
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x408200F0 # bne .L_80178760
    lwz 28, 0x4(31)
    mr 3, 24
    bl fn_8023DE58
    cmpw 28, 3
    .4byte 0x408200DC # bne .L_80178760
    mr 3, 24
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x408200CC # bne .L_80178760
    mr 3, 24
    bl fn_8022D534
    clrlwi. 0, 3, 24
    .4byte 0x408200BC # bne .L_80178760
    mr 3, 24
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 24
    lfs 0, 0xc(31)
    fsubs 28, 0, 1
    bl fn_8023E724
    lfs 3, 0x4(3)
    lfs 2, 0x10(31)
    .4byte 0xC022AC64 # lfs f1, lbl_8053DC04@sda21(r0)
    lfs 0, 0xc(1)
    fsubs 29, 2, 3
    fcmpu cr0, 1, 0
    .4byte 0x4182001C # beq .L_801786F8
    fmuls 0, 29, 29
    fmadds 1, 28, 28, 0
    bl fn_80154378
    lfs 0, 0xc(1)
    fcmpo cr0, 0, 1
    .4byte 0x4081006C # ble .L_80178760
L_801786F8:
    fmuls 0, 29, 29
    fmadds 1, 28, 28, 0
    bl fn_80154378
    stfs 1, 0xc(1)
    fneg 1, 28
    lis 3, lbl_80534C00@ha
    fneg 2, 29
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002AC6C # lfs f0, lbl_8053DC0C@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xa8(1)
    lwz 0, 0xac(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    mr 23, 24
    mr 3, 24
    bl fn_8022F3DC
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80178754
    stw 24, 0x10(1)
    .4byte 0x48000010 # b .L_80178760
L_80178754:
    mr 3, 24
    bl fn_8022F3DC
    stw 3, 0x10(1)
L_80178760:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FEDC # blt .L_80178644
    lwz 0, 0x14(1)
    cmpwi 0, -0x1
    .4byte 0x41820008 # beq .L_8017877C
    stw 0, 0x98(31)
L_8017877C:
    lwz 3, 0x10(1)
    cmpwi 3, 0x0
    .4byte 0x418000A8 # blt .L_8017882C
    bl fn_80236228
    cmpwi 3, 0x0
    .4byte 0x4081009C # ble .L_8017882C
    lwz 3, 0x10(1)
    li 4, -0x1
    bl fn_802362C4
    mr 3, 23
    bl fn_8023E724
    mr 28, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    mr 6, 28
    lis 7, 0x1b
    addi 4, 4, 0x5059
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 28, 3
    .4byte 0x41800020 # blt .L_801787F4
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801787F4
    lwz 0, 0x198(31)
    stw 0, 0x26c(3)
L_801787F4:
    lwz 3, 0x254(31)
    addi 0, 3, 0x1
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    clrlwi 0, 0, 26
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8017882C
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x7d
    li 5, 0x0
    bl fn_801F0E34
L_8017882C:
    li 0, 0x2
    stw 0, 0x23c(31)
    .4byte 0x4800004C # b .L_80178880
L_80178838:
    lwz 4, 0x300(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80178858
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_80178858:
    lwz 4, 0x304(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80178878
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_80178878:
    li 0, 0x0
    stb 0, 0x11c(31)
L_80178880:
    psq_l 31, 0x118(1), 0, 0
    lfd 31, 0x110(1)
    psq_l 30, 0x108(1), 0, 0
    lfd 30, 0x100(1)
    psq_l 29, 0xf8(1), 0, 0
    lfd 29, 0xf0(1)
    psq_l 28, 0xe8(1), 0, 0
    lfd 28, 0xe0(1)
    lmw 23, 0xbc(1)
    lwz 0, 0x124(1)
    mtlr 0
    addi 1, 1, 0x120
    blr

