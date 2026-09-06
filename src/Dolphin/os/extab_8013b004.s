.section extab, "a"
.balign 4
.global etb_80006AB4
etb_80006AB4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006AB4, 8

.section extabindex, "a"
.balign 4
.global eti_8001339C
eti_8001339C:
    .4byte fn_8013B004
    .4byte 0x000001E4
    .4byte etb_80006AB4
.size eti_8001339C, 12

# fn_8013B004(colorVec4*=r30, obj*=r31) - one of a FAMILY of "apply a
# lighting/fog preset" functions (siblings: fn_8013AC90 above, fn_8013B1E8
# below) - each runs the identical ~20-call battery of fn_8005XXXX low-level
# GX render-state setters (fn_8005AD7C/A464/ADB4/D404/D3C8/B93C/EBC4/EF80/
# EA6C/EAB0/EAF4/EB5C/EDE8/E8DC/F11C/E8B8/F48C/F538/F56C/EEB0/F4E0/F50C/C46C,
# none decompiled yet) but with different hardcoded literal parameters per
# call site - i.e. per-scene fog/light color and range presets. This one also
# calls fn_8005C24C(0x80,0,4) and, uniquely, writes `colorVec4`'s 4 floats
# directly into the GX CPU write-gather-pipe FIFO at 0xCC008000 (raw
# `stfs f, -0x8000(0xcc010000)` - bypasses the normal GX API, a hand-inlined
# fast path), duplicating values across 8 writes (f1,f2,f0,f2,f0,f3,f1,f3).
.text
.balign 4
.global fn_8013B004

fn_8013B004:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr 30, 3
    bl fn_8005AD7C
    li 3, 0x9
    li 4, 0x1
    bl fn_8005A464
    li 3, 0x0
    li 4, 0x9
    li 5, 0x0
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x4
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x2
    bl fn_8005D404
    li 3, 0x1
    bl fn_8005D3C8
    li 3, 0x0
    bl fn_8005B93C
    lwz 0, 0x0(31)
    addi 4, 1, 0x8
    li 3, 0x1
    stw 0, 0x8(1)
    bl fn_8005EBC4
    li 3, 0x0
    li 4, 0xff
    li 5, 0xff
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x0
    li 4, 0xf
    li 5, 0xf
    li 6, 0xf
    li 7, 0x2
    bl fn_8005EA6C
    li 3, 0x0
    li 4, 0x7
    li 5, 0x7
    li 6, 0x7
    li 7, 0x1
    bl fn_8005EAB0
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x0
    bl fn_8005E8DC
    li 3, 0x1
    bl fn_8005F11C
    li 3, 0x0
    bl fn_8005E8B8
    li 3, 0x1
    li 4, 0x4
    li 5, 0x5
    li 6, 0xf
    bl fn_8005F48C
    li 3, 0x0
    li 4, 0x3
    li 5, 0x0
    bl fn_8005F538
    li 3, 0x0
    bl fn_8005F56C
    li 3, 0x4
    li 4, 0x0
    li 5, 0x0
    li 6, 0x7
    li 7, 0x0
    bl fn_8005EEB0
    li 3, 0x1
    bl fn_8005F4E0
    li 3, 0x0
    bl fn_8005F50C
    li 3, 0x0
    bl fn_8005C46C
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    lfs 1, 0x0(30)
    lis 3, 0xcc01
    lfs 2, 0x4(30)
    stfs 1, -0x8000(3)
    lfs 0, 0x8(30)
    stfs 2, -0x8000(3)
    lfs 3, 0xc(30)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 3, -0x8000(3)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
