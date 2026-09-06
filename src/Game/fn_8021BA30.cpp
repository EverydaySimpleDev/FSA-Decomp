typedef int s32;
typedef unsigned short u16;

extern "C" s32 fn_801CD664(s32 range);

// fn_8021BA30 - a randomized-timer-range record initializer (this,
// tag). Zeroes +0x0/+0x8, sets +0x4 to a random int in [0x1e,0x1e+0x5b)
// = [30,120] via the confirmed fn_801CD664 PRNG helper, +0xc to a
// random int in [0xa,0xa+0x15) = [10,30], and stores the passed-through
// tag argument as a u16 at +0x10. Used by TZOK (embedded at +0x374,
// tag=0).
extern "C" void fn_8021BA30(void* this_, u16 tag) {
    *(s32*)((char*)this_ + 0x0) = 0;
    *(s32*)((char*)this_ + 0x4) = fn_801CD664(0x5b) + 0x1e;
    *(s32*)((char*)this_ + 0x8) = 0;
    *(s32*)((char*)this_ + 0xc) = fn_801CD664(0x15) + 0xa;
    *(u16*)((char*)this_ + 0x10) = tag;
}
