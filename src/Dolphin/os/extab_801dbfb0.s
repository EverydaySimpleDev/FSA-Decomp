/*
 * fn_801DBFB0(this) - THE REAL C++ CONSTRUCTOR for this 3rd chase-or-free-
 * roam class (corrects/refines fn_801DBCEC's earlier characterization - see
 * that file's banner for the full correction). Unlike fn_801DBCEC, THIS
 * function actually chains to the base-class constructor fn_801D0F40 (the
 * SAME confirmed common-ancestor constructor shared by 11+ other sibling
 * classes this session) and sets this->vtable = lbl_804A4EE8 (this class's
 * own vtable - the SAME vtable dtor_801DBEF4 resets to), which is exactly
 * the "real ctor" signature established throughout this session (base-ctor
 * chain + vtable set, vs. a later parameter-driven setParams() that does
 * neither). It unconditionally zeroes this->0x2a8=-1 (target-ID sentinel,
 * matches fn_801DB950's reset), this->0x2ac=0, and this->0x2b0 through
 * 0x2e4 (velocity/anchor/timer/effect-handle fields - all the fields
 * fn_801DB6C8/fn_801DB9CC/fn_801DBCEC operate on) to 0/0.0f, with NO
 * branching on this->0x16c at all (unlike fn_801DBCEC, which branches on it
 * repeatedly to distinguish fresh-vs-reused instances - a pattern that only
 * makes sense for a function called on EVERY spawn/respawn, not the one-time
 * raw constructor). This strongly suggests fn_801DBCEC is actually this
 * class's setParams()/respawn-configuration method (called after this real
 * constructor, on every spawn including pooled reuse), not the constructor
 * itself - mirroring the fn_801DA504(real ctor)/fn_801DA124(setParams) split
 * already confirmed for an earlier class this session, just discovered in
 * the opposite landing order.
 *
 * Attempted real-C++ promotion (Phase 4): every field write/call/vtable-set
 * is confirmed correct, but the 2 SDA float constants (lbl_8053F2E4, used
 * 10x; lbl_8053F33C, used 2x) land in a genuine conflict: declaring
 * lbl_8053F2E4's local FIRST (matching retail's actual LOAD ORDER - it's
 * temporally loaded before lbl_8053F33C) makes MWCC assign it f0 (retail
 * wants f1); declaring lbl_8053F33C's local first instead gets the
 * REGISTER assignment right (f0=F33C, f1=F2E4) but reverses which
 * constant loads FIRST, which is equally wrong since the two `lfs`
 * instructions are otherwise byte-identical except for register number -
 * order and register choice can't both be satisfied via declaration-order
 * tricks tried (2 variants). Reverted to raw asm.
 */
.section extab, "a"
.balign 4
.global etb_80008850
etb_80008850:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008850, 8

.section extabindex, "a"
.balign 4
.global eti_80015CAC
eti_80015CAC:
    .4byte fn_801DBFB0
    .4byte 0x00000090
    .4byte etb_80008850
.size eti_80015CAC, 12

.text
.balign 4
.global fn_801DBFB0

fn_801DBFB0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0F40
    lis 3, lbl_804A4EE8@ha
    li 4, -0x1
    addi 3, 3, lbl_804A4EE8@l
    li 0, 0x0
    stw 3, 0x0(31)
    mr 3, 31
    .4byte 0xC022C344 # lfs f1, lbl_8053F2E4@sda21(r0)
    stw 4, 0x2a8(31)
    .4byte 0xC002C39C # lfs f0, lbl_8053F33C@sda21(r0)
    stw 0, 0x2ac(31)
    stfs 1, 0x2b0(31)
    stfs 1, 0x2b4(31)
    stfs 1, 0x2b8(31)
    stfs 1, 0x2bc(31)
    stfs 1, 0x2c0(31)
    stfs 1, 0x2c4(31)
    stfs 1, 0x2c8(31)
    stfs 1, 0x2cc(31)
    stfs 1, 0x2d0(31)
    stfs 0, 0x2d4(31)
    stfs 0, 0x2d8(31)
    sth 0, 0x2dc(31)
    sth 0, 0x2de(31)
    stfs 1, 0x2e0(31)
    stw 0, 0x2e4(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
