# fn_800F51D8(unused, r4, r5): a classification gate, structurally
# unrelated to the OIWA boulder-scheduler cluster immediately preceding it
# (no reference to any of that class's fields) despite being address-
# adjacent. Calls fn_8022461C(r5) to get a 16-bit classification code; if
# that code is 2, 3, or 0xe, returns 0 immediately; otherwise delegates to
# fn_802265DC(r5, r4, 0) and returns its result. NOT YET UNDERSTOOD: what
# fn_8022461C classifies (r5 could be a tile/terrain type, actor category,
# or similar - not enough context yet) or what the 3 excluded codes / the
# fn_802265DC delegate represent. Landed as raw GNU-AS since it needs its
# own extab/extabindex entry, matching every function in this address
# range - see project_fsa_extab_bug_resolved.md.
#
# Attempted real-C++ promotion: the branch LOGIC matched exactly, but
# retail saves incoming r4/r5 into r31/r30 respectively (r31=arg4,
# r30=arg5); MWCC always allocates the OPPOSITE pairing (r31=arg5,
# r30=arg4) regardless of which parameter is referenced/renamed first in
# the source (2 variants: direct params; renamed to `point`/`param`
# locals before first use). A genuine register-allocation-choice wall.
# Reverted to raw asm.
.section extab, "a"
.balign 4
.global etb_800056E8
etb_800056E8:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800056E8, 8

.section extabindex, "a"
.balign 4
.global eti_8001198C
eti_8001198C:
    .4byte fn_800F51D8
    .4byte 0x00000070
    .4byte etb_800056E8
.size eti_8001198C, 12

.text
.balign 4
.global fn_800F51D8

fn_800F51D8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 5
    mr 3, 30
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_800F5218
    cmpwi 0, 0xe
    .4byte 0x4182000C # beq .L_800F5218
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_800F5220
L_800F5218:
    li 3, 0x0
    .4byte 0x48000014 # b .L_800F5230
L_800F5220:
    mr 3, 30
    mr 4, 31
    li 5, 0x0
    bl fn_802265DC
L_800F5230:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
