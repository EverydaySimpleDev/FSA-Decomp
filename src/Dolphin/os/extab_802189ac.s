.section extab, "a"
.balign 4
.global etb_8000A310
etb_8000A310:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A310, 8

.section extabindex, "a"
.balign 4
.global eti_80017FE0
eti_80017FE0:
    .4byte fn_802189AC
    .4byte 0x000000E0
    .4byte etb_8000A310
.size eti_80017FE0, 12

.text
.balign 4
.global fn_802189AC

# fn_802189AC(state) - "is an HBMB already nearby" query, paired
# with the conditional spawn fn_802188B0 (extab_802188b0.s) which
# only fires when this returns false. state->0x0 is the owning
# actor back-pointer (same double-indirection convention as
# fn_802188B0). Fetches the CONFIRMED spatial-registry manager via
# SpatialRegistry_GetBase (reference_fsa_spatial_registry_system.md) and calls
# fn_801F7818(manager, "HBMB", ownerGroup=owner->0x4, -1, outBuffer)
# - a likely-NEW member of that registry family (a bulk
# type+owner-filtered query returning up to 0x1000/4 record
# pointers into a stack buffer plus a count), distinct from the 7
# previously-confirmed single-nearest variants. Walks the returned
# records checking each is non-null, has the CONFIRMED active flag
# (+0x11c), and two not-previously-seen fields (+0x94==1, +0x238<5)
# before testing distance-squared between the owner's position
# (this->0xc/0x10) and the record's (+0xc/+0x10) against threshold
# lbl_8053FC54, returning true on the first match found.
fn_802189AC:
    stwu 1, -0x1010(1)
    mflr 0
    stw 0, 0x1014(1)
    stw 31, 0x100c(1)
    li 31, 0x0
    stw 30, 0x1008(1)
    mr 30, 3
    bl SpatialRegistry_GetBase
    lwz 5, 0x0(30)
    lis 4, 0x4842
    addi 4, 4, 0x4d42
    addi 6, 1, 0x8
    lwz 5, 0x4(5)
    li 7, -0x1
    bl fn_801F7818
    addi 4, 1, 0x8
    mtctr 3
    cmpwi 3, 0x0
    .4byte 0x4081007C # ble .L_80218A70
L_802189F8:
    lwz 5, 0x0(4)
    cmplwi 5, 0x0
    .4byte 0x41820068 # beq .L_80218A68
    lbz 0, 0x11c(5)
    cmplwi 0, 0x0
    .4byte 0x4182005C # beq .L_80218A68
    lhz 0, 0x94(5)
    cmplwi 0, 0x1
    .4byte 0x41820050 # beq .L_80218A68
    lwz 0, 0x238(5)
    cmpwi 0, 0x5
    .4byte 0x40800044 # bge .L_80218A68
    lwz 3, 0x0(30)
    lfs 3, 0xc(5)
    lfs 0, 0xc(3)
    lfs 2, 0x10(5)
    lfs 1, 0x10(3)
    fsubs 3, 3, 0
    .4byte 0xC002CCB4 # lfs f0, lbl_8053FC54@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80218A68
    li 31, 0x1
    .4byte 0x4800000C # b .L_80218A70
L_80218A68:
    addi 4, 4, 0x4
    .4byte 0x4200FF8C # bdnz .L_802189F8
L_80218A70:
    lwz 0, 0x1014(1)
    mr 3, 31
    lwz 31, 0x100c(1)
    lwz 30, 0x1008(1)
    mtlr 0
    addi 1, 1, 0x1010
    blr
