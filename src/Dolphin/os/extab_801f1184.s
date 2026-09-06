# fn_801F1184(this) - forwards this->0x19c (a slot index) into the
# registry chain lbl_8053AAF8[0]->0x4->0x8, calling
# Registry_GetSlotValueOrFallback(registry, slot).
#
# Attempted real-C++ promotion (Phase 4): logic/chain fully confirmed
# correct (byte-exact except instruction order), but matches the
# well-established prologue-LR-save-placement wall - retail loads
# this->0x19c BEFORE storing LR, then loads the registry chain; MWCC
# always stores LR first regardless of source phrasing (tried both
# pre-declared locals in retail's read order, and a single fully-inlined
# expression to influence call-arg evaluation order). Deferred
# immediately per standing discipline for an already-established wall.
.section extab, "a"
.balign 4
.global etb_80008DB4
etb_80008DB4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80008DB4, 8

.section extabindex, "a"
.balign 4
.global eti_80016468
eti_80016468:
    .4byte fn_801F1184
    .4byte 0x00000030
    .4byte etb_80008DB4
.size eti_80016468, 12

.text
.balign 4
.global fn_801F1184

fn_801F1184:
    stwu 1, -0x10(1)
    mflr 0
    lwz 4, 0x19c(3)
    stw 0, 0x14(1)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(5)
    lwz 3, 0x8(3)
    bl Registry_GetSlotValueOrFallback
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
