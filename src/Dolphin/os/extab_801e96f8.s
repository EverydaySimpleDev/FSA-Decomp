.section extab, "a"
.balign 4
.global etb_80008BCC
etb_80008BCC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008BCC, 8

.section extabindex, "a"
.balign 4
.global eti_800161C8
eti_800161C8:
    .4byte fn_801E96F8
    .4byte 0x000000BC
    .4byte etb_80008BCC
.size eti_800161C8, 12

.text
.balign 4
.global fn_801E96F8

# fn_801E96F8(this) - FSOB's real setParams (see
# project_fsa_fspo_fsob_actor_progress.md). Chains the confirmed shared
# base setParams `fn_801D0ED0`, stores the spawn word's top byte
# (`this->0x90`) into `this->0x2ac` (a variant byte). Unlike FSPO,
# which computes its rect from a direction-dependent lookup, FSOB
# initializes a WIDE bounding rect directly from FIXED constants
# (`0x60/0x64 = -R`, `0x68/0x6c = +R`, forming a symmetric box), plus a
# second, smaller "inner" rect (`0x70-0x7c` and `0x80-0x8c`, both from
# a different pair of constants) - a fixed-size AREA, not a computed
# point like FSPO. Standard finish: `0xb0=0`, `0x98=2` (state), flags
# `|=0x280`, timer reset (`0x108`/`0x244`=1000), state reset
# (`0x248/0x24c=0`, `0x250=-1`, tint constant). Does NOT touch
# `this->0x11c` (unlike FSPO) or register into any per-instance array -
# FSOB looks like a fixed-size area/volume object rather than a
# point-marker, consistent with its ctor building a 32-element sub-record
# array of its own (`this->0x2b0`, see extab_801e9850.s) rather than
# registering INTO someone else's array.
fn_801E96F8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    .4byte 0xC082C6B0 # lfs f4, lbl_8053F650@sda21(r0)
    li 5, 0x0
    lwz 0, 0x90(31)
    li 4, 0x2
    fneg 3, 4
    .4byte 0xC042C660 # lfs f2, lbl_8053F600@sda21(r0)
    stb 0, 0x2ac(31)
    li 3, 0x3e8
    .4byte 0xC022C6A8 # lfs f1, lbl_8053F648@sda21(r0)
    li 0, -0x1
    stfs 3, 0x60(31)
    .4byte 0xC002C65C # lfs f0, lbl_8053F5FC@sda21(r0)
    stfs 3, 0x64(31)
    stfs 4, 0x68(31)
    stfs 4, 0x6c(31)
    stfs 2, 0x70(31)
    stfs 2, 0x74(31)
    stfs 1, 0x78(31)
    stfs 1, 0x7c(31)
    stfs 2, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    stw 5, 0xb0(31)
    stw 4, 0x98(31)
    lwz 4, 0x230(31)
    ori 4, 4, 0x280
    stw 4, 0x230(31)
    stw 3, 0x108(31)
    lwz 3, 0x108(31)
    stw 3, 0x244(31)
    stw 5, 0x248(31)
    stw 5, 0x24c(31)
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
