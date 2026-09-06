.section extab, "a"
.balign 4
.global etb_80006ABC
etb_80006ABC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006ABC, 8

.section extabindex, "a"
.balign 4
.global eti_800133A8
eti_800133A8:
    .4byte fn_8013B1E8
    .4byte 0x000001E4
    .4byte etb_80006ABC
.size eti_800133A8, 12

# fn_8013B1E8 - another sibling of fn_8013AC90/fn_8013B004's lighting/fog
# preset family, but takes NO arguments (self-contained default preset).
# Same fn_8005XXXX battery with its own literal params, plus 2 globals
# (lbl_8053CDD8, lbl_80543F20) fed into fn_8005EBC4 under different mode
# tags (1, 2), and closes with fn_800601C0(1) - not seen in the other two
# siblings.
.text
.balign 4
.global fn_8013B1E8

fn_8013B1E8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_8005AD7C
    li 3, 0x9
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xd
    li 4, 0x1
    bl fn_8005A464
    li 3, 0x0
    li 4, 0x9
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xd
    li 5, 0x1
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
    li 4, 0x1
    li 5, 0x4
    li 6, 0x3c
    li 7, 0x0
    li 8, 0x7d
    bl fn_8005B6BC
    li 3, 0x1
    bl fn_8005B93C
    .4byte 0x80029E38 # lwz r0, lbl_8053CDD8@sda21(r0)
    addi 4, 1, 0xc
    li 3, 0x1
    stw 0, 0xc(1)
    bl fn_8005EBC4
    .4byte 0x80020F80 # lwz r0, lbl_80543F20@sda21(r0)
    addi 4, 1, 0x8
    li 3, 0x2
    stw 0, 0x8(1)
    bl fn_8005EBC4
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x0
    li 4, 0xf
    li 5, 0x8
    li 6, 0x2
    li 7, 0x4
    bl fn_8005EA6C
    li 3, 0x0
    li 4, 0x7
    li 5, 0x4
    li 6, 0x1
    li 7, 0x2
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
    li 3, 0x1
    li 4, 0x3
    li 5, 0x1
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
    li 3, 0x1
    bl fn_800601C0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
