.section extab, "a"
.balign 4
.global etb_8000CB7C
etb_8000CB7C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CB7C, 8

.section extabindex, "a"
.balign 4
.global eti_8001BAB4
eti_8001BAB4:
    .4byte fn_802CBC70
    .4byte 0x00000330
    .4byte etb_8000CB7C
.size eti_8001BAB4, 12

.text
.balign 4
.global fn_802CBC70

# fn_802CBC70(this) - ONOF's real setParams(). Genuinely understood
# (the final ~40-instruction tail beyond what's traced here is
# survey-level - a mirrored "already off" branch, same shape as the
# "already on" one documented below).
#
# 1. Nudges the spawn position slightly (`this->0xc/0x10 += const`),
#    then unpacks the spawn-param word into: a 5-bit global-flag GROUP
#    INDEX (`this->0x244`, top 5 bits - the SAME index the hook
#    `fn_802CBAFC` derives and checks via `fn_802D800C`), a 12-bit field
#    (`this->0x24c`), a 3-bit "combo/orientation" field (`this->0x240`),
#    and a 2-bit field (`this->0x248`). Zeroes several state fields
#    (`0x23c/254/230/234`) and calls `fn_80138A30(lbl_8053AAF8)` (the
#    CONFIRMED Scene-Manager module-readiness query from
#    [[project_fsa_core_systems_gap]]) to help decide an initial dispatch
#    flag based on `this->0x248`/`0x240`.
# 2. **Resume-already-solved check**: for specific `this->0x240` values
#    (3 or 4), steps `GetRoomConfigRecord` then calls **`fn_802D7888(groupIndex)`**
#    - the CONFIRMED single-global 32-bit flag CHECKER from
#    [[project_fsa_flag_switch_helpers]] (distinct from `fn_802D800C`'s
#    per-room version - this one has no `this` argument, a truly global
#    bit). If the group's flag is ALREADY set (e.g. this puzzle was
#    already solved in a prior session/scene visit), immediately plays
#    the SAME "combo complete" sound sequence the update-hook plays
#    (`fn_802A3948` code `0xbe`, then 2 `fn_8013CC50` effect handles
#    codes `0x428`/`0x429` into `this->0x230/0x234`) - i.e. an
#    already-solved switch puzzle resumes its solved audio/visual state
#    immediately at spawn, without needing to be re-triggered.
fn_802CBC70:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022DE10 # lfs f1, lbl_80540DB0@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    lfs 0, 0xc(3)
    fadds 0, 0, 1
    stfs 0, 0xc(3)
    lfs 0, 0x10(3)
    fadds 0, 0, 1
    stfs 0, 0x10(3)
    lwz 3, 0x90(3)
    srwi 3, 3, 27
    stw 3, 0x244(31)
    lwz 3, 0x90(31)
    clrlwi 3, 3, 20
    stw 3, 0x24c(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 3, 17
    stw 3, 0x240(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 2, 5
    stw 3, 0x248(31)
    stw 0, 0x23c(31)
    stw 0, 0x254(31)
    stw 0, 0x230(31)
    stw 0, 0x234(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    lwz 0, 0x248(31)
    clrlwi 3, 3, 24
    li 4, 0x0
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802CBD08
    li 4, 0x1
    .4byte 0x48000048 # b .L_802CBD4C
L_802CBD08:
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_802CBD20
    cmplwi 3, 0x2
    .4byte 0x41820038 # beq .L_802CBD4C
    li 4, 0x1
    .4byte 0x48000030 # b .L_802CBD4C
L_802CBD20:
    cmpwi 0, 0x2
    .4byte 0x4082001C # bne .L_802CBD40
    subi 0, 3, 0x2
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x40810018 # ble .L_802CBD4C
    li 4, 0x1
    .4byte 0x48000010 # b .L_802CBD4C
L_802CBD40:
    cmpwi 0, 0x3
    .4byte 0x40820008 # bne .L_802CBD4C
    li 4, 0x1
L_802CBD4C:
    cmpwi 4, 0x1
    .4byte 0x40820178 # bne .L_802CBEC8
    lwz 0, 0x240(31)
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802CBD68
    cmpwi 0, 0x4
    .4byte 0x40820124 # bne .L_802CBE88
L_802CBD68:
    bl GetRoomConfigRecord
    lwz 4, 0x244(31)
    bl fn_802D7888
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200CC # bne .L_802CBE48
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0xbe
    bl fn_802A3948
    lwz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802CBDD0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DE20 # lfs f1, lbl_80540DC0@sda21(r0)
    li 5, 0x428
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
L_802CBDD0:
    lwz 0, 0x234(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802CBE08
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DE20 # lfs f1, lbl_80540DC0@sda21(r0)
    li 5, 0x429
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
L_802CBE08:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lwz 0, 0x240(31)
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_802CBE3C
    li 0, 0x2
    stw 0, 0x238(31)
    .4byte 0x4800013C # b .L_802CBF74
L_802CBE3C:
    li 0, 0x4
    stw 0, 0x238(31)
    .4byte 0x48000130 # b .L_802CBF74
L_802CBE48:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0xbf
    bl fn_802A3884
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x238(31)
    .4byte 0x480000F0 # b .L_802CBF74
L_802CBE88:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0xbf
    bl fn_802A3884
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x238(31)
    .4byte 0x480000B0 # b .L_802CBF74
L_802CBEC8:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0xbe
    bl fn_802A3948
    lwz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802CBF18
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DE20 # lfs f1, lbl_80540DC0@sda21(r0)
    li 5, 0x428
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
L_802CBF18:
    lwz 0, 0x234(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802CBF50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DE20 # lfs f1, lbl_80540DC0@sda21(r0)
    li 5, 0x429
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
L_802CBF50:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x4
    stw 0, 0x238(31)
L_802CBF74:
    .4byte 0xC022DE24 # lfs f1, lbl_80540DC4@sda21(r0)
    .4byte 0xC002DE28 # lfs f0, lbl_80540DC8@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

