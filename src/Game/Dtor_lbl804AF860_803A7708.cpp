#include "types.h"

// fn_803A7708 - actor@lbl_804AF860's destructor. Calls fn_80083A68 on
// a manager sub-object (lbl_80529DEC->0x8), then releases 8 embedded
// sub-objects (this->0x4/0x8, a 6-element array at this->0xc-0x20,
// then this->0x24/0x28/0x2c/0x30) via own vtable slot 0 (byte offset
// 0x8), clearing each afterward. Zeroes the global lbl_8053AD90, then
// conditionally forwards to dtor_80084580. See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why the
// releases go through a real `virtual` member rather than a manual
// cast.
extern "C" void fn_80083A68(void* p);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804AF860[];
extern u8 lbl_80529DEC[];
extern s32 lbl_8053AD90;

struct Slot0 {
    virtual void slot0(s32 arg);
};

extern "C" void* fn_803A7708(void* this_, s16 flag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_804AF860;
        void* mgr = *(void**)((u8*)lbl_80529DEC + 0x8);
        fn_80083A68(mgr);
        void* p;
        p = *(void**)((char*)this_ + 0x4);
        if (p != 0) { ((Slot0*)p)->slot0(1); }
        *(void**)((char*)this_ + 0x4) = 0;
        p = *(void**)((char*)this_ + 0x8);
        if (p != 0) { ((Slot0*)p)->slot0(1); }
        *(void**)((char*)this_ + 0x8) = 0;
        for (s32 i = 0; i < 6; i++) {
            void* q = *(void**)((char*)this_ + 0xc + 4 * i);
            if (q != 0) { ((Slot0*)q)->slot0(1); }
            *(void**)((char*)this_ + 0xc + 4 * i) = 0;
        }
        p = *(void**)((char*)this_ + 0x24);
        if (p != 0) { ((Slot0*)p)->slot0(1); }
        *(void**)((char*)this_ + 0x24) = 0;
        p = *(void**)((char*)this_ + 0x28);
        if (p != 0) { ((Slot0*)p)->slot0(1); }
        *(void**)((char*)this_ + 0x28) = 0;
        p = *(void**)((char*)this_ + 0x2c);
        if (p != 0) { ((Slot0*)p)->slot0(1); }
        *(void**)((char*)this_ + 0x2c) = 0;
        p = *(void**)((char*)this_ + 0x30);
        if (p != 0) { ((Slot0*)p)->slot0(1); }
        *(void**)((char*)this_ + 0x30) = 0;
        lbl_8053AD90 = 0;
        if (flag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
