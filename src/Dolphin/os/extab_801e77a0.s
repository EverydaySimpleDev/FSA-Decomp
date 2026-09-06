.section extab, "a"
.balign 4
.global etb_80008B44
etb_80008B44:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008B44, 8

.section extabindex, "a"
.balign 4
.global eti_800160FC
eti_800160FC:
    .4byte fn_801E77A0
    .4byte 0x00000150
    .4byte etb_80008B44
.size eti_800160FC, 12

.text
.balign 4
.global fn_801E77A0

# fn_801E77A0(this) - IPOT's real setParams (see
# project_fsa_ipot_actor_progress.md). Chains the confirmed shared base
# setParams `fn_801D0ED0`, then decodes `this->0x90`: a 2-bit "type"
# into `this->0x98`, a 5-bit sub-field into `this->0x2b4`, and a
# mutually-exclusive 3-way flag check (bits 10/8/9) setting exactly one
# of `0x8000`/`0x2000`/`0x4000` into `this->0x230`. Sets a small
# fixed-size rect (`0x80/0x84/0x88/0x8c`) from a lookup-table constant.
# If flag bit 16 of `0x230` is set: duplicates that same fixed rect into
# a second block (`0x60-0x7c`) and clears `this->0xb0`; otherwise, calls
# `fn_80210990(this, type, &this->0x60)` (an external per-type rect
# lookup, not further decompiled) and sets `this->0xb0 = 0x40004`. Ends
# with standard init: flags `|=0x380`, resets the 1000-tick timer
# (`0x108`, mirrored to `0x244`), derives `this->0x2b0` from the type
# via `fn_801F6874`, and resets state (`0x248/0x24c=0`, `0x250=-1`,
# tint `0x254/0x258` to a constant).
fn_801E77A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    lwz 0, 0x90(31)
    clrlwi 0, 0, 30
    stw 0, 0x98(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 25
    stw 0, 0x2b4(31)
    lwz 3, 0x90(31)
    extrwi. 0, 3, 1, 10
    .4byte 0x41820014 # beq .L_801E77EC
    lwz 0, 0x230(31)
    ori 0, 0, 0x8000
    stw 0, 0x230(31)
    .4byte 0x48000030 # b .L_801E7818
L_801E77EC:
    extrwi. 0, 3, 1, 8
    .4byte 0x41820014 # beq .L_801E7804
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
    .4byte 0x48000018 # b .L_801E7818
L_801E7804:
    extrwi. 0, 3, 1, 9
    .4byte 0x41820010 # beq .L_801E7818
    lwz 0, 0x230(31)
    ori 0, 0, 0x4000
    stw 0, 0x230(31)
L_801E7818:
    .4byte 0xC022C63C # lfs f1, lbl_8053F5DC@sda21(r0)
    .4byte 0xC002C648 # lfs f0, lbl_8053F5E8@sda21(r0)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 16, 16
    .4byte 0x41820040 # beq .L_801E7878
    stfs 1, 0x60(31)
    li 0, 0x0
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    stw 0, 0xb0(31)
    .4byte 0x48000020 # b .L_801E7894
L_801E7878:
    lwz 4, 0x98(31)
    mr 3, 31
    addi 5, 31, 0x60
    bl fn_80210990
    lis 3, 0x4
    addi 0, 3, 0x4
    stw 0, 0xb0(31)
L_801E7894:
    lwz 3, 0x230(31)
    li 0, 0x3e8
    ori 3, 3, 0x380
    stw 3, 0x230(31)
    stw 0, 0x108(31)
    lwz 0, 0x108(31)
    stw 0, 0x244(31)
    lwz 3, 0x98(31)
    bl fn_801F6874
    sth 3, 0x2b0(31)
    li 3, 0x0
    li 0, -0x1
    .4byte 0xC002C624 # lfs f0, lbl_8053F5C4@sda21(r0)
    stw 3, 0x248(31)
    stw 3, 0x24c(31)
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
