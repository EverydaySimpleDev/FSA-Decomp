typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;
typedef float f32;

extern "C" f32 lbl_80541194;
extern "C" f32 lbl_8054118C;
extern "C" f32 lbl_80541190;

// GRVE setParams. Initializes the actor's scale/blend block
// (0x60-0x6c) from 3 shared constants, derives a room-flag index from the
// spawn param, and resets its state machine (0x230/0x238/0x23c).
//
// The empty `if` and the `dummy` pointer below are not meaningful logic -
// found via decomp-permuter automated search (see
// reference_fsa_decomp_permuter_setup.md). MWCC's register allocator only
// reproduces retail's exact f0/f1/f2 assignment for a/b/c, and its exact
// store-address computation for the 0x238 write, when the code is shaped
// exactly this way; removing either construct still compiles correctly but
// no longer matches retail byte-for-byte.
extern "C" void Grve_SetParams(void* this_) {
    char* t = (char*)this_;
    f32 c, b;
    char* dummy;
    f32 a;
    a = lbl_80541194;
    if (((!t) && (!t)) && (!t)) {
    }
    b = lbl_8054118C;
    *(f32*)(t + 0x60) = a;
    dummy = t + 0x238;
    c = lbl_80541190;
    *(f32*)(t + 0x64) = a;
    *(f32*)(t + 0x68) = b;
    *(f32*)(t + 0x6c) = c;
    *(u32*)(t + 0x234) = (*(u32*)(t + 0x90)) & 0x3F;
    *(s32*)dummy = -1;
    *(f32*)(t + 0x23c) = c;
    *(s32*)(t + 0x230) = 0;
}
