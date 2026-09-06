.section extab, "a"
.balign 4
.global etb_80008890
etb_80008890:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008890, 8

.section extabindex, "a"
.balign 4
.global eti_80015D0C
eti_80015D0C:
    .4byte fn_801DC89C
    .4byte 0x000000F4
    .4byte etb_80008890
.size eti_80015D0C, 12

# fn_801DC89C(this) - likely this class's setParams()/spawn-config method
# (NOT confirmed as the raw C++ constructor - like fn_801DBCEC in the
# PREVIOUS class, it calls fn_801D0ED0(this) but does NOT chain to the
# base-class constructor fn_801D0F40 and does NOT set this->vtable, so per
# this session's established "real ctor" signature it's most likely the
# setParams-equivalent; the actual base-chaining constructor, if this class
# has one, has not been landed yet).
#
# Initializes this class's own fields: this->0x60/0x64/0x68/0x6c (4 floats,
# constants - same offsets used by both prior classes this session, likely
# universal Actor-base bounding-box fields), this->0x80/0x84/0x88/0x8c (2
# more float pairs), this->0xb0=0x40004, this->0x98=this->0x114=2, ORs
# 0x2a0 into this->0x230 (a new flag-bit combination, larger than the
# single-bit flags seen elsewhere), this->0x108=this->0x244=0x3e8 (1000),
# this->0x196(byte)=1, this->0x248=this->0x24c=0, this->0x250=-1,
# this->0x254=this->0x258=0.
#
# Registers its own timed-cue sequence array at this+0x270 via
# fn_801D2608(this+0x270, lbl_8053A150@sda21, 2) - a NEW embedding site for
# the shared "timed-cue lookup table" component - then calls 2 more
# CONFIRMED real methods on it: fn_801D22DC(this+0x270, 0, 2, 0) and
# fn_801D1D60(this+0x270).
#
# Finally calls fn_801DAC6C() (the global singleton accessor) then
# fn_801DAF3C(singleton, this->0x198) - a NEW real call site for one of the
# "generic record setter" methods in the fn_801DAC6C/lbl_804C92D0 record
# family (distinct from fn_801DAF14's "add ID" - this class uses a
# different setter API on the same singleton, exact semantics not
# confirmed).
.text
.balign 4
.global fn_801DC89C

fn_801DC89C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    .4byte 0xC002C3C8 # lfs f0, lbl_8053F368@sda21(r0)
    lis 3, 0x4
    .4byte 0xC022C3CC # lfs f1, lbl_8053F36C@sda21(r0)
    addi 9, 3, 0x4
    stfs 0, 0x60(31)
    li 10, 0x2
    .4byte 0xC002C3D0 # lfs f0, lbl_8053F370@sda21(r0)
    li 8, 0x3e8
    stfs 1, 0x64(31)
    li 7, 0x1
    .4byte 0xC042C3A0 # lfs f2, lbl_8053F340@sda21(r0)
    li 6, 0x0
    stfs 0, 0x68(31)
    li 0, -0x1
    .4byte 0xC022C3BC # lfs f1, lbl_8053F35C@sda21(r0)
    addi 3, 31, 0x270
    stfs 0, 0x6c(31)
    .4byte 0x388D8590 # li r4, lbl_8053A150@sda21
    .4byte 0xC002C3A4 # lfs f0, lbl_8053F344@sda21(r0)
    li 5, 0x2
    stfs 2, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    stw 9, 0xb0(31)
    stw 10, 0x98(31)
    lwz 9, 0x230(31)
    ori 9, 9, 0x2a0
    stw 9, 0x230(31)
    stw 8, 0x108(31)
    lwz 8, 0x108(31)
    stw 8, 0x244(31)
    stw 10, 0x114(31)
    stb 7, 0x196(31)
    stw 6, 0x248(31)
    stw 6, 0x24c(31)
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D2608
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    addi 3, 31, 0x270
    bl fn_801D1D60
    bl fn_801DAC6C
    lwz 4, 0x198(31)
    bl fn_801DAF3C
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

