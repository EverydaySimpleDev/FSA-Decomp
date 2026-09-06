typedef unsigned char u8;
typedef int s32;
typedef float f32;

extern "C" void* fn_801D0F40(void* this_);
extern void* lbl_804A6708[];
extern "C" f32 lbl_8053FD88;
extern "C" f32 lbl_8053FD58;

// NAVI's constructor: installs the shared base ctor + vtable, then
// initializes fields 0x2a8-0x2d4. Two float globals seed the block:
// lbl_8053FD88 for one field (0x2b8), lbl_8053FD58 reused across 5
// adjacent fields (0x2bc-0x2cc) - hoisting that second constant into a
// local (read once, reused 5x) rather than re-reading the global each
// time matches retail's own register allocation exactly. The specific
// declare-uninitialized-then-assign-later shape of `defaultB` (rather
// than declaring+initializing it inline at its first use, like
// `defaultA`) is load-bearing for matching retail's f0/f1 register
// choice - found via decomp-permuter's mutation search, confirmed by
// direct A/B recompilation that the "inline-initialize both" phrasing
// swaps the two registers instead.
extern "C" void* Navi_ctor(void* this_) {
    f32 defaultB;
    fn_801D0F40(this_);
    *(void**)this_ = lbl_804A6708;
    f32 defaultA = lbl_8053FD88;
    *(s32*)((char*)this_ + 0x2a8) = 0;
    defaultB = lbl_8053FD58;
    *(u8*)((char*)this_ + 0x2ac) = 0;
    *(u8*)((char*)this_ + 0x2ad) = 0;
    *(s32*)((char*)this_ + 0x2b0) = 0;
    *(s32*)((char*)this_ + 0x2b4) = -1;
    *(f32*)((char*)this_ + 0x2b8) = defaultA;
    *(f32*)((char*)this_ + 0x2bc) = defaultB;
    *(f32*)((char*)this_ + 0x2c0) = defaultB;
    *(f32*)((char*)this_ + 0x2c4) = defaultB;
    *(f32*)((char*)this_ + 0x2c8) = defaultB;
    *(f32*)((char*)this_ + 0x2cc) = defaultB;
    *(s32*)((char*)this_ + 0x2d0) = 0;
    *(s32*)((char*)this_ + 0x2d4) = 0;
    return this_;
}
