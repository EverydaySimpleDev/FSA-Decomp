#include "types.h"

extern "C" void fn_801EE434(void* handle);
extern "C" void fn_80457E54(void* this_, u8 flag);
extern "C" void dtor_801F593C(void* this_, int how);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804A9C20[];
extern void* lbl_8053AF80;

// GOL2 cluster, part 4/5 (228B). Destructor - culls two 4-element handle
// arrays (this->0x2c8 and this->0x2d8, walked together in a real loop)
// plus two singleton handles (this->0x2e8/0x2ec) via the confirmed
// fn_801EE434, plays a sound (fn_80457E54, shared with setParams) unless
// this->0x238==5, then the shared base dtor dtor_801F593C plus a
// conditional second-base dtor dtor_80084580.
extern "C" void* Gol2_dtor(void* this_, short how) {
    if (this_) {
        *(void**)this_ = lbl_804A9C20;
        char* p = (char*)this_;
        int i = 0;
        do {
            void* h0 = *(void**)(p + 0x2c8);
            if (h0) {
                fn_801EE434(h0);
            }
            void* h1 = *(void**)(p + 0x2d8);
            if (h1) {
                fn_801EE434(h1);
            }
            i++;
            p += 4;
        } while (i < 4);
        void* h2 = *(void**)((char*)this_ + 0x2e8);
        if (h2) {
            fn_801EE434(h2);
        }
        void* h3 = *(void**)((char*)this_ + 0x2ec);
        if (h3) {
            fn_801EE434(h3);
        }
        if (*(s32*)((char*)this_ + 0x238) != 5) {
            fn_80457E54(lbl_8053AF80, 0);
        }
        dtor_801F593C(this_, 0);
        if (how > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
