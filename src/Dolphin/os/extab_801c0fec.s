.section extab, "a"
.balign 4
.global etb_80007FBC
etb_80007FBC:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80007FBC, 8

.section extabindex, "a"
.balign 4
.global eti_80015118
eti_80015118:
    .4byte fn_801C0FEC
    .4byte 0x00000170
    .4byte etb_80007FBC
.size eti_80015118, 12

.text
.balign 4
.global fn_801C0FEC

# fn_801C0FEC(this, point*, outVec*) - called by SLK2's fn_801C2ED4
# state-0x11 handler (extab_801c2ed4.s). Copies `point` into *outVec as
# a baseline. If this->0x50 (a registry handle) is negative, stops
# there. Otherwise looks up the record via the CONFIRMED spatial
# registry (SpatialRegistry_GetBase manager + fn_801F666C by-ID lookup,
# reference_fsa_spatial_registry_system.md) and, if found and within a
# small epsilon-squared distance (lbl_8053ED94) of `point`, computes an
# offset point a fixed distance (lbl_8053ED98) away from the record, in
# the direction from the record toward `point` (normalized via the
# standard fast-rsqrt idiom), and writes it into *outVec - "push this
# point a fixed distance away from whatever I'm registered against."
# Two axis-aligned shortcuts skip the vector math when `point` is
# directly ahead/behind the record along Z. Returns whether an
# adjustment was actually made.
fn_801C0FEC:
    stwu 1, -0x20(1)
    mflr 0
    lfs 1, 0x0(4)
    stw 0, 0x24(1)
    lfs 0, 0x4(4)
    stw 31, 0x1c(1)
    lwz 31, 0x50(3)
    stw 30, 0x18(1)
    li 30, 0x0
    cmpwi 31, 0x0
    stw 29, 0x14(1)
    mr 29, 5
    stw 28, 0x10(1)
    mr 28, 4
    stfs 1, 0x0(5)
    stfs 0, 0x4(5)
    .4byte 0x4180010C # blt .L_801C1138
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200F8 # beq .L_801C1138
    lfs 3, 0x4(28)
    lfs 2, 0x10(3)
    lfs 7, 0x0(28)
    fsubs 5, 3, 2
    lfs 6, 0xc(3)
    .4byte 0xC002BDF4 # lfs f0, lbl_8053ED94@sda21(r0)
    fsubs 4, 7, 6
    fmuls 1, 5, 5
    fmadds 8, 4, 4, 1
    fcmpo cr0, 8, 0
    cror eq, lt, eq
    .4byte 0x408200C8 # bne .L_801C1138
    fcmpo cr0, 3, 2
    li 30, 0x1
    cror eq, lt, eq
    .4byte 0x4082002C # bne .L_801C10AC
    fcmpo cr0, 7, 6
    .4byte 0x40800014 # bge .L_801C109C
    .4byte 0xC002BDF8 # lfs f0, lbl_8053ED98@sda21(r0)
    fsubs 0, 6, 0
    stfs 0, 0x0(29)
    .4byte 0x480000A0 # b .L_801C1138
L_801C109C:
    .4byte 0xC002BDF8 # lfs f0, lbl_8053ED98@sda21(r0)
    fadds 0, 0, 6
    stfs 0, 0x0(29)
    .4byte 0x48000090 # b .L_801C1138
L_801C10AC:
    lis 4, lbl_80539D44@ha
    .4byte 0xC022BDFC # lfs f1, lbl_8053ED9C@sda21(r0)
    lfs 0, lbl_80539D44@l(4)
    fmuls 0, 1, 0
    fcmpo cr0, 8, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801C1104
    .4byte 0xC002BDF0 # lfs f0, lbl_8053ED90@sda21(r0)
    fcmpo cr0, 8, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801C10DC
    .4byte 0x48000024 # b .L_801C10FC
L_801C10DC:
    frsqrte 3, 8
    .4byte 0xC042BE00 # lfs f2, lbl_8053EDA0@sda21(r0)
    .4byte 0xC002BE04 # lfs f0, lbl_8053EDA4@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 8, 1, 0
    fmuls 8, 2, 0
L_801C10FC:
    fmuls 4, 4, 8
    fmuls 5, 5, 8
L_801C1104:
    lfs 0, 0xc(3)
    .4byte 0xC022BDF8 # lfs f1, lbl_8053ED98@sda21(r0)
    stfs 0, 0x0(29)
    fmuls 4, 4, 1
    lfs 0, 0x10(3)
    fmuls 5, 5, 1
    stfs 0, 0x4(29)
    lfs 0, 0x0(29)
    fadds 0, 0, 4
    stfs 0, 0x0(29)
    lfs 0, 0x4(29)
    fadds 0, 0, 5
    stfs 0, 0x4(29)
L_801C1138:
    lwz 0, 0x24(1)
    mr 3, 30
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
