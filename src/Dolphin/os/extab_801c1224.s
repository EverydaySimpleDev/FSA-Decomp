# fn_801C1224(idList, value) - called by SLK2's fn_801C2ED4 as
# fn_801C1224(this, this->0x10c) (extab_801c2ed4.s). Broadcasts `value`
# to a list of registered actor IDs: idList->0xc is the count, and
# idList+0x10 is an array of that many IDs. For each ID, looks it up
# via the CONFIRMED spatial registry (SpatialRegistry_GetBase + fn_801F666C,
# reference_fsa_spatial_registry_system.md); if found AND that target's
# own this->0x230 bit 15 is clear, stores `value` into the target's
# +0x10c field and invokes the target's OWN vtable+0x24 virtual with no
# extra args - "tell each of my registered companion actors about this
# value, unless they're opted out."
#
# Attempted real-C++ promotion (Phase 4): matched retail's logic exactly
# (confirmed via disasm) but hit a pure register-allocation-only
# prologue-ordering mismatch (retail's r28-r31 save order differs from
# what a walking-pointer-loop source variant produced). Same class of
# issue as fn_80317BB8/fn_80107014/fn_801C5680/fn_801DA438/fn_801E2180/
# dtor_801D7730/fn_803DA878/fn_801DACAC/fn_801DAD2C/fn_802EB27C.
# Reverted to raw asm; see project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_80007FD4
etb_80007FD4:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80007FD4, 8

.section extabindex, "a"
.balign 4
.global eti_8001513C
eti_8001513C:
    .4byte fn_801C1224
    .4byte 0x00000094
    .4byte etb_80007FD4
.size eti_8001513C, 12

.text
.balign 4
.global fn_801C1224

fn_801C1224:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    lwz 31, 0xc(3)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    li 29, 0x0
    stw 28, 0x10(1)
    mr 28, 4
    .4byte 0x48000040 # b .L_801C1290
L_801C1254:
    bl SpatialRegistry_GetBase
    lwz 4, 0x10(30)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_801C1288
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x40820018 # bne .L_801C1288
    stw 28, 0x10c(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_801C1288:
    addi 30, 30, 0x4
    addi 29, 29, 0x1
L_801C1290:
    cmpw 29, 31
    .4byte 0x4180FFC0 # blt .L_801C1254
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
