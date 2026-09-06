.text
.balign 4
.global fn_80212F5C

# fn_80212F5C(this) - called from RUSA's setParams (extab_80212288.s)
# on sub-variant 3, once the spawned ARIJ child handle is confirmed
# valid. A "reset to falling/drop" state initializer: offsets
# `this->0x10` (Y position) down by a fixed constant
# (`lbl_8053FB48`-`lbl_8053FB4C`), snapshots the resulting position as
# an anchor (`this->0x24/0x28/0x2c`), sets the active+visible flag bits
# (`this->0x230 |= 0x2200`), resets the 1000-tick timer (`0x108`,
# mirrored to `0x244`), resets tint/color to full (`0x54/0x58/0x5c`),
# then rescales 4 stored velocity components (`0x70/0x74/0x78/0x7c`) by
# the freshly-reset tint values.
fn_80212F5C:
    lfs 2, 0x10(3)
    li 0, 0x3e8
    .4byte 0xC022CBA8 # lfs f1, lbl_8053FB48@sda21(r0)
    .4byte 0xC002CBAC # lfs f0, lbl_8053FB4C@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x10(3)
    lfs 1, 0xc(3)
    stfs 1, 0x24(3)
    lfs 1, 0x10(3)
    stfs 1, 0x28(3)
    lfs 1, 0x14(3)
    stfs 1, 0x2c(3)
    lwz 4, 0x230(3)
    ori 4, 4, 0x2200
    stw 4, 0x230(3)
    stw 0, 0x108(3)
    lwz 0, 0x108(3)
    stw 0, 0x244(3)
    stfs 0, 0x54(3)
    stfs 0, 0x58(3)
    stfs 0, 0x5c(3)
    lfs 1, 0x70(3)
    lfs 0, 0x54(3)
    fmuls 0, 1, 0
    stfs 0, 0x70(3)
    lfs 1, 0x78(3)
    lfs 0, 0x54(3)
    fmuls 0, 1, 0
    stfs 0, 0x78(3)
    lfs 1, 0x74(3)
    lfs 0, 0x58(3)
    fmuls 0, 1, 0
    stfs 0, 0x74(3)
    lfs 1, 0x7c(3)
    lfs 0, 0x58(3)
    fmuls 0, 1, 0
    stfs 0, 0x7c(3)
    blr
