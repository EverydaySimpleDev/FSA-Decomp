.section extab, "a"
.balign 4
.global etb_80006A9C
etb_80006A9C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006A9C, 8

.section extabindex, "a"
.balign 4
.global eti_80013378
eti_80013378:
    .4byte fn_8013ABCC
    .4byte 0x00000088
    .4byte etb_80006A9C
.size eti_80013378, 12

# fn_8013ABCC(this=r3, vec3*=r4, Mtx*=r5) - a virtual-dispatch "set transform"
# method: this->0x18/0x1c/0x20 = vec3 (from r4), this->0x24 (48-byte Mtx) =
# *r5 (copied via PSMTXCopy), then invokes 3 of this's OWN vtable slots
# (offsets 0x10, 0xc, 0x1c) each with `this` as sole arg - change-notification
# callbacks fired after the transform is committed. Confirms the objects
# passed around by fn_8013AB2C's cluster (this->0x8/->0xc off the camera-cue
# singleton) are themselves polymorphic transformable nodes.
.text
.balign 4
.global fn_8013ABCC

fn_8013ABCC:
    stwu 1, -0x10(1)
    mflr 0
    lfs 0, 0x0(4)
    stw 0, 0x14(1)
    lfs 1, 0x4(4)
    stw 31, 0xc(1)
    mr 31, 3
    stfs 0, 0x18(3)
    mr 3, 5
    lfs 0, 0x8(4)
    addi 4, 31, 0x24
    stfs 1, 0x1c(31)
    stfs 0, 0x20(31)
    bl PSMTXCopy
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x1c(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
