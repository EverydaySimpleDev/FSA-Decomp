.section extab, "a"
.balign 4
.global etb_800095BC
etb_800095BC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800095BC, 8

.section extabindex, "a"
.balign 4
.global eti_80016DE0
eti_80016DE0:
    .4byte fn_8012E780
    .4byte 0x0000005C
    .4byte etb_800095BC
.size eti_80016DE0, 12

# fn_8012E780 - "???" real constructor. Base Actor ctor (Actor_ctor) +
# install vtable lbl_8049E8A0 + zero this->0x230/0x234/0x23c/0x240/0x244
# and this->0x238 = lbl_8053CC3C (a float constant). Attempted real-C++
# promotion (Phase 4): matched retail except MWCC's `li r0,0`/`lfs f0,...`
# constant-materialization order would not follow source statement order
# under any of 3 tried reorderings - the same MWCC -O4,p scheduling wall
# documented in reference_fsa_mwcc_scheduling_wall_investigation.md.
# Reverted to raw asm; the OTHER 28 functions from this same batch (see
# project_fsa_phase4_resumed_session2.md) landed as real C++ cleanly.
.text
.balign 4
.global fn_8012E780

fn_8012E780:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl Actor_ctor
    lis 3, lbl_8049E8A0@ha
    li 0, 0x0
    addi 3, 3, lbl_8049E8A0@l
    .4byte 0xC0029C9C # lfs f0, lbl_8053CC3C@sda21(r0)
    stw 3, 0x0(31)
    mr 3, 31
    stw 0, 0x230(31)
    stw 0, 0x234(31)
    stfs 0, 0x238(31)
    stw 0, 0x23c(31)
    stw 0, 0x240(31)
    stw 0, 0x244(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
