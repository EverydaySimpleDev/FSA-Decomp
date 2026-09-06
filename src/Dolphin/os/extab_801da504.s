/*
 * fn_801DA504(this) (0x801DA504-0x801DA59C, 0x98/152 bytes) - the REAL C++
 * CONSTRUCTOR for this new class (fn_801DA124, landed earlier, is the LATER-
 * running setParams()/Init() - the same real-ctor-vs-setParams split
 * confirmed for dtor_801D46FC's class). Calls fn_801D0F40 - the SAME base-
 * construction step ClassX/the position-trail-predictor/dtor_801D80F0 all
 * use - installs vtable lbl_804A4C58 (matches dtor_801DA438 exactly), and
 * constructs the embedded animation-controller sub-object at this+0x2a8 via
 * fn_801DAA24 (confirms this+0x2a8 is a real constructed sub-object, not a
 * raw field - matches its usage in fn_801D8A30/fn_801D89BC/fn_801D9C58).
 *
 * Resets this->0x2d0 to a placeholder constant (fn_801DA124's setParams
 * later overwrites it with the REAL traced ceiling value), then constructs
 * the pattern array at this+0x2d4 via __construct_array(this+0x2d4, fn_801546E4,
 * 0, elemSize=8, count=0xc) - CORRECTING fn_801DA124's banner: the array is
 * 12 SLOTS of 8 bytes each (0x2d4-0x334, matching every pattern-select
 * caller's `this->0x334`-adjacent boundary and `index*8` addressing, and
 * fn_801D8B28's flat random-index range of 0-0xc), not just "4 positions" -
 * fn_801DA124 only ever WRITES the first 3 groups of 4 (indices 0-3, 4-7,
 * 8-11) as three progressively-higher height tiers, but the full array is
 * 12 slots. `fn_801546E4` (a far-address, likely generic/shared per-element
 * constructor) is the real per-slot init - not yet landed. Finally zeroes
 * the remaining per-instance fields this class uses (this->0x334-0x33f,
 * 0x2c0-0x2cc - the 4 effect-handle slots dtor_801DA438 releases).
 */

.section extab, "a"
.balign 4
.global etb_800087A4
etb_800087A4:
    .4byte 0x080A0000
    .4byte 0x0000002C
    .4byte 0x00090010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801B7E1C
.size etb_800087A4, 28

.section extabindex, "a"
.balign 4
.global eti_80015BC8
eti_80015BC8:
    .4byte fn_801DA504
    .4byte 0x00000098
    .4byte etb_800087A4
.size eti_80015BC8, 12

.text
.balign 4
.global fn_801DA504

fn_801DA504:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0F40
    lis 4, lbl_804A4C58@ha
    addi 3, 31, 0x2a8
    addi 0, 4, lbl_804A4C58@l
    stw 0, 0x0(31)
    bl fn_801DAA24
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    lis 3, fn_801546E4@ha
    addi 4, 3, fn_801546E4@l
    li 5, 0x0
    stfs 0, 0x2d0(31)
    addi 3, 31, 0x2d4
    li 6, 0x8
    li 7, 0xc
    bl __construct_array
    li 0, 0x0
    mr 3, 31
    stb 0, 0x334(31)
    sth 0, 0x336(31)
    sth 0, 0x338(31)
    sth 0, 0x33a(31)
    sth 0, 0x33c(31)
    stb 0, 0x33e(31)
    stb 0, 0x33f(31)
    stw 0, 0x2c0(31)
    stw 0, 0x2c4(31)
    stw 0, 0x2c8(31)
    stw 0, 0x2cc(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

