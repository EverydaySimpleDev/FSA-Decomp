.section extab, "a"
.balign 4
.global etb_80008980
etb_80008980:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008980, 8

.section extabindex, "a"
.balign 4
.global eti_80015E74
eti_80015E74:
    .4byte fn_801E2080
    .4byte 0x00000100
    .4byte etb_80008980
.size eti_80015E74, 12

.text
.balign 4
.global fn_801E2080

# fn_801E2080(this) - TINK's real setParams(). Calls the base
# fn_801D0ED0 first, then overrides ALL of its scale/offset float
# fields with TINK-specific constants (lbl_8053F4C0/lbl_8053F4C4), sets
# a flags bit (0x300) in this->0x230, a 1000-frame timer (this->0x108,
# copied to this->0x244 per the standard convention), a "capability"
# byte (this->0x194=1), resets owner (this->0x4=0), and a
# PRNG-jittered 16-bit countdown at this->0x2cc via the confirmed
# fn_801CD664 jitter helper. Registers the inherited "timed-cue lookup
# table" component at this->0x270 with TINK's OWN 17-sequence data
# table (lbl_804A51A0) and activates sequence 0 - by far the largest
# sequence table seen this session (STAL/WIZR/ROPE all use 2-4).
fn_801E2080:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    .4byte 0xC022C520 # lfs f1, lbl_8053F4C0@sda21(r0)
    li 6, 0x0
    .4byte 0xC002C524 # lfs f0, lbl_8053F4C4@sda21(r0)
    li 4, 0x3e8
    stfs 1, 0x80(31)
    li 0, 0x1
    li 3, 0x3d
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stfs 1, 0x60(31)
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
    stw 6, 0xb0(31)
    stw 6, 0x98(31)
    lwz 5, 0x230(31)
    ori 5, 5, 0x300
    stw 5, 0x230(31)
    stw 4, 0x108(31)
    lwz 4, 0x108(31)
    stw 4, 0x244(31)
    stb 0, 0x194(31)
    stw 6, 0x4(31)
    bl fn_801CD664
    addi 0, 3, 0x3c
    lis 3, lbl_804A51A0@ha
    sth 0, 0x2cc(31)
    li 5, 0x0
    addi 4, 3, lbl_804A51A0@l
    li 0, -0x1
    stw 5, 0x248(31)
    addi 3, 31, 0x270
    .4byte 0xC002C4E0 # lfs f0, lbl_8053F480@sda21(r0)
    stw 5, 0x24c(31)
    li 5, 0x11
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D2608
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

