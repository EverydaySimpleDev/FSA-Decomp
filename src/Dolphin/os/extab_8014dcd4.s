.section extab, "a"
.balign 4
.global etb_80006DFC
etb_80006DFC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006DFC, 8

.section extabindex, "a"
.balign 4
.global eti_80013888
eti_80013888:
    .4byte fn_8014DCD4
    .4byte 0x00000040
    .4byte etb_80006DFC
.size eti_80013888, 12

# fn_8014DCD4 - HINO's ("Hinox") real draw(). Fully traced, and much
# simpler than update() - a single unconditional call to the confirmed
# shared effect-spawn primitive fn_801F06F0, using per-instance model
# table lbl_80465D60 (7 entries) and an index computed from this->0x264
# (zeroed in setParams, incremented by other code) plus a fixed offset
# of 0x2b. No multi-state branching, unlike BZBR's draw().
#
# Attempted real-C++ promotion (2 variants: float constant passed
# inline to both f1/f2 args; float constant hoisted to a named local
# computed first): retail loads the float SDA constant + duplicates it
# (fmr) BEFORE computing the table pointer/index, but MWCC always
# schedules the float load/fmr AFTER the integer pointer/index setup
# regardless of source order. Matches the documented "float load
# reordering" wall (see fn_801D6D08's writeup). Reverted to raw asm.
.text
.balign 4
.global fn_8014DCD4

fn_8014DCD4:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022A230 # lfs f1, lbl_8053D1D0@sda21(r0)
    lis 4, lbl_80465D60@ha
    stw 0, 0x14(1)
    addi 4, 4, lbl_80465D60@l
    fmr 2, 1
    li 6, 0x0
    lwz 5, 0x264(3)
    li 7, 0x7
    addi 5, 5, 0x2b
    bl fn_801F06F0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
