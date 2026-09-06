.section extab, "a"
.balign 4
.global etb_80007CAC
etb_80007CAC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007CAC, 8

.section extabindex, "a"
.balign 4
.global eti_80014C80
eti_80014C80:
    .4byte fn_801B7D34
    .4byte 0x000000AC
    .4byte etb_80007CAC
.size eti_80014C80, 12

.text
.balign 4
.global fn_801B7D34

# fn_801B7D34(this) - ROPE's real setParams(). Calls the base setParams
# (`fn_801D0ED0`) first, then branches on a spawn parameter
# (`this->0x14`, likely a spawn-height/offset value read from the
# room's placement data) against a threshold constant `lbl_8053EB18`:
#  - Above threshold: type=3, timer=-1 (a fixed/no-countdown variant,
#    likely a Rope that starts already active rather than emerging).
#  - At/below threshold: type=0, timer = fn_801CD664()+0x28 - a
#    PRNG-jittered countdown (fn_801CD664 is a known jitter-base helper
#    pattern), consistent with Rope's classic "lurking, then slithers
#    out after a delay" behavior.
# Then configures the "timed-cue lookup table" component ROPE inherits
# from its base class (embedded at this->0x270 - see
# project_fsa_multiple_inheritance_pattern.md and extab_801b7e1c.s;
# the component itself is already constructed by this point, this call
# only REGISTERS ROPE's own data): fn_801D2608(this+0x270,
# sequenceArrayPtr=lbl_804A3A58, sequenceCount=4) registers ROPE's own
# 4-sequence attack/animation-step data table (lbl_804A3A58 is a DATA
# table, not a vtable), fn_801D22DC selects/activates a sequence keyed
# by `this->0x98` (a recurring "sub-type/model index" field seen across
# many actors) with mode 2, and fn_801D1D60 restarts evaluation from
# the component's own stored timestamp. Also sets a pair of scale-like
# fields (this->0x254/0x258) to a shared constant `lbl_8053EAFC`.
fn_801B7D34:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    lfs 1, 0x14(31)
    .4byte 0xC002BB78 # lfs f0, lbl_8053EB18@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810018 # ble .L_801B7D70
    li 3, 0x3
    li 0, -0x1
    stw 3, 0x248(31)
    stw 0, 0x250(31)
    .4byte 0x4800001C # b .L_801B7D88
L_801B7D70:
    li 0, 0x0
    li 3, 0x3d
    stw 0, 0x248(31)
    bl fn_801CD664
    addi 0, 3, 0x28
    stw 0, 0x250(31)
L_801B7D88:
    li 0, 0x0
    lis 3, lbl_804A3A58@ha
    stw 0, 0x24c(31)
    addi 4, 3, lbl_804A3A58@l
    .4byte 0xC002BB5C # lfs f0, lbl_8053EAFC@sda21(r0)
    addi 3, 31, 0x270
    li 5, 0x4
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D2608
    lwz 4, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    addi 3, 31, 0x270
    bl fn_801D1D60
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

