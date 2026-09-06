#include "types.h"

// fn_8044BCA4 (dtor) + fn_8044BDCC (ctor) - a class with 2 lock-
// guarded sub-object release slots (this->0x4/0x8), registering
// itself as a singleton (lbl_8053AF30). The dtor guards each slot
// with a lock/unlock pair (fn_8008382C/fn_800839B8) against a nested
// field of the confirmed global PRNG/manager struct lbl_8053AAF8
// around each virtual release call (own vtable slot 0, byte offset
// 0x8), re-locking a separate cached handle (lbl_8053A8AC) after
// unlocking. See [[reference_fsa_virtual_dispatch_codegen_trick]] for
// why the release call goes through a real `virtual` member rather
// than a manual cast.
extern "C" void fn_8008382C(void* p);
extern "C" void fn_800839B8(void* p);
extern void* lbl_8053AAF8[2];
extern void* lbl_8053A8AC;
extern void* lbl_8053AF30;
extern void* lbl_804B1D10[];
extern "C" void dtor_80084580(void* this_);

struct Slot0 {
    virtual void slot0(s32 arg);
};

extern "C" void* fn_8044BCA4(void* this_, s16 flag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_804B1D10;
        if (*(void**)((char*)this_ + 0x4) != 0) {
            void* relockObj = lbl_8053A8AC;
            void* lockObj = *(void**)((char*)(*(void**)((char*)lbl_8053AAF8[0] + 0x4)) + 0x30);
            fn_8008382C(lockObj);
            void* p = *(void**)((char*)this_ + 0x4);
            if (p != 0) {
                ((Slot0*)p)->slot0(1);
            }
            *(void**)((char*)this_ + 0x4) = 0;
            void* unlockObj = *(void**)((char*)(*(void**)((char*)lbl_8053AAF8[0] + 0x4)) + 0x30);
            fn_800839B8(unlockObj);
            fn_8008382C(relockObj);
        }
        if (*(void**)((char*)this_ + 0x8) != 0) {
            void* relockObj = lbl_8053A8AC;
            void* lockObj = *(void**)((char*)(*(void**)((char*)lbl_8053AAF8[0] + 0x4)) + 0x30);
            fn_8008382C(lockObj);
            void* p = *(void**)((char*)this_ + 0x8);
            if (p != 0) {
                ((Slot0*)p)->slot0(1);
            }
            *(void**)((char*)this_ + 0x8) = 0;
            void* unlockObj = *(void**)((char*)(*(void**)((char*)lbl_8053AAF8[0] + 0x4)) + 0x30);
            fn_800839B8(unlockObj);
            fn_8008382C(relockObj);
        }
        lbl_8053AF30 = 0;
        if (flag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}

extern "C" void* fn_8044BDCC(void* this_) {
    *(void**)this_ = lbl_804B1D10;
    lbl_8053AF30 = this_;
    *(u32*)((char*)this_ + 0x4) = 0;
    *(u32*)((char*)this_ + 0x8) = 0;
    *(u32*)((char*)this_ + 0xc) = 0;
    *(u32*)((char*)this_ + 0x10) = 0;
    *(u8*)((char*)this_ + 0x14) = 0;
    *(u8*)((char*)this_ + 0x15) = 0xff;
    *(u8*)((char*)this_ + 0x16) = 0;
    return this_;
}
