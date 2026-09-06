#include "types.h"

// fn_8044296C (dtor) + fn_804429B4 (real ctor, direct vtable-install) -
// a standalone "sound settings" singleton class (vtable lbl_804B1A38,
// NOT Actor-derived - dtor has no dtor_801F593C base-chain call). The
// ctor registers itself as a global singleton (lbl_8053ADD8), then
// queries the real Dolphin SDK call OSGetSoundMode() and writes the
// resulting mono/stereo flag into BOTH the confirmed player-candidate-
// tracking table (lbl_80529DEC->0x245) and via fn_804594E4(lbl_8053AF80,
// flag) - a sound config setter not traced further.
extern "C" void dtor_80084580(void* this_);
extern "C" u32 OSGetSoundMode(void);
extern "C" void fn_804594E4(void* mgr, s32 flag);

extern void* lbl_804B1A38[];
extern void* lbl_8053ADD8;
extern void* lbl_8053AF80;
extern u8 lbl_80529DEC[];

extern "C" void* fn_8044296C(void* this_, s16 how) {
    if (this_) {
        *(void**)this_ = lbl_804B1A38;
        if (how > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}

extern "C" void* fn_804429B4(void* this_) {
    *(void**)this_ = lbl_804B1A38;
    lbl_8053ADD8 = this_;
    *(u8*)((char*)this_ + 0x4) = 0;

    if (OSGetSoundMode() == 0) {
        fn_804594E4(lbl_8053AF80, 0);
        lbl_80529DEC[0x245] = 0;
    } else {
        fn_804594E4(lbl_8053AF80, 1);
        lbl_80529DEC[0x245] = 1;
    }

    return this_;
}
