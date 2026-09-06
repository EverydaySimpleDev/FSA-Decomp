/*
 * fn_80157ED0 - SLR2's ("Bow Soldier") real destructor. Extended shape:
 * releases TWO independently-tracked handles before the standard vtable-
 * rebind/base-dtor/free sequence - this->0x280 (ref-count decrement only,
 * no positional transform: `handle->0x290--`) and this->0x284 (a
 * positioned effect release via a canned transform, matching the
 * convention seen across HINO/SLR1/DDRK). Both use the shared registry
 * lookup (SpatialRegistry_GetBase/fn_801F666C).
 *
 * Attempted real-C++ promotion (Phase 4): the second handle's cleanup
 * writes a 2-float pair (found->0x3c/0x40, both set to the SAME constant
 * lbl_8053D378) via retail's `psq_l`/`psq_st` paired-single instructions
 * (routed through an 8-byte stack scratch area), not plain scalar `stfs`
 * pairs. Two natural-C++ attempts (direct scalar stores; a `struct { f32
 * x,y; }` local built then copy-assigned as a unit) both got MWCC to
 * generate 2 separate `stfs` instead of the `psq_l`/`psq_st` pair -
 * MWCC only emits Gekko's paired-single quantized load/store for
 * specific intrinsics or `qr`-typed accesses, not plain float-pair
 * writes, even when the values are identical. Reverted to raw asm; see
 * project_fsa_phase4_resumed_session2.md. All the OTHER logic in this
 * function (both registry lookups, the ref-count decrement, the
 * dtor_801F593C/dtor_80084580 tail) matched retail exactly on the first
 * C++ attempt - only this one 5-instruction paired-single sequence
 * resisted.
 */

.section extab, "a"
.balign 4
.global etb_80006F0C
etb_80006F0C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80006F0C, 8

.section extabindex, "a"
.balign 4
.global eti_80013A20
eti_80013A20:
    .4byte fn_80157ED0
    .4byte 0x000000E0
    .4byte etb_80006F0C
.size eti_80013A20, 12

.text
.balign 4
.global fn_80157ED0

fn_80157ED0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 4
    stw 29, 0x24(1)
    mr. 29, 3
    .4byte 0x418200A0 # beq .L_80157F90
    lis 3, lbl_804A00C8@ha
    addi 0, 3, lbl_804A00C8@l
    stw 0, 0x0(29)
    lwz 31, 0x280(29)
    cmpwi 31, 0x0
    .4byte 0x41800024 # blt .L_80157F2C
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80157F2C
    lwz 4, 0x290(3)
    subi 0, 4, 0x1
    stw 0, 0x290(3)
L_80157F2C:
    lwz 31, 0x284(29)
    cmpwi 31, 0x0
    .4byte 0x41800040 # blt .L_80157F74
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80157F6C
    .4byte 0xC022A3D8 # lfs f1, lbl_8053D378@sda21(r0)
    .4byte 0xC002A3FC # lfs f0, lbl_8053D39C@sda21(r0)
    stfs 1, 0x8(1)
    stfs 1, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_80157F6C:
    li 0, -0x1
    stw 0, 0x284(29)
L_80157F74:
    mr 3, 29
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 30
    .4byte 0x4081000C # ble .L_80157F90
    mr 3, 29
    bl dtor_80084580
L_80157F90:
    lwz 0, 0x34(1)
    mr 3, 29
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

