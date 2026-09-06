/*
 * fn_801DACAC(record, outVec3) -> bool (0x801DACAC-0x801DAD2C, 0x80/128 bytes) -
 * a "resolve a target-ID record to its position" helper: reads a target ID
 * from record->0x0; if valid (>=0), resolves it via the CONFIRMED
 * SpatialRegistry_GetBase/fn_801F666C pair and copies ITS position (+0xc/+0x10/+0x14)
 * into outVec3, returning true. Otherwise (invalid ID or resolve failure)
 * sets outVec3 to a constant (`lbl_8053F2D8`) and returns false.
 *
 * Attempted real-C++ promotion (Phase 4): retail needs only 2 non-volatile
 * registers (r30=outVec3, r31=id) and a 0x10-byte frame, reusing r3's
 * natural post-call value as the boolean result (0 falls through from
 * either the initial `li 3,0` or fn_801F666C's own null return; only the
 * success path explicitly sets `li 3,1`) instead of tracking a separate
 * result variable. Two source variants - an explicit `s32 result`
 * variable set at the end; an early-return restructuring - both still had
 * MWCC allocate a 3RD non-volatile register (r29) for outVec3, needing a
 * 0x20-byte frame (extra 0xc bytes). Same class of issue as fn_80317BB8/
 * fn_80107014/fn_801C5680/fn_801DA438/fn_801E2180/dtor_801D7730/
 * fn_803DA878. Reverted to raw asm; see
 * project_fsa_phase4_resumed_session2.md.
 */

.section extab, "a"
.balign 4
.global etb_800087D0
etb_800087D0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800087D0, 8

.section extabindex, "a"
.balign 4
.global eti_80015BEC
eti_80015BEC:
    .4byte fn_801DACAC
    .4byte 0x00000080
    .4byte etb_800087D0
.size eti_80015BEC, 12

.text
.balign 4
.global fn_801DACAC

fn_801DACAC:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC002C338 # lfs f0, lbl_8053F2D8@sda21(r0)
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    lwz 31, 0x0(3)
    li 3, 0x0
    stw 30, 0x8(1)
    mr 30, 4
    cmpwi 31, 0x0
    stfs 0, 0x0(4)
    stfs 0, 0x4(4)
    stfs 0, 0x8(4)
    .4byte 0x41800034 # blt .L_801DAD14
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_801DAD10
    lfs 0, 0xc(3)
    stfs 0, 0x0(30)
    lfs 0, 0x10(3)
    stfs 0, 0x4(30)
    lfs 0, 0x14(3)
    stfs 0, 0x8(30)
L_801DAD10:
    li 3, 0x1
L_801DAD14:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

