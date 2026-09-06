#include "types.h"

// fn_8042EEC8: real destructor for the small (0x14-byte) "attachment-
// slot helper" class (vtable lbl_804B1600). Releases 3 virtual sub-
// objects at this->0x4/0x8/0xc via own virtual slot 0 (byte offset
// 0x8), clearing each afterward, then zeroes the global
// lbl_8053AEC4, then optionally self-frees via dtor_80084580 if the
// caller flag (sign-extended) is positive. See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why this calls
// through a real `virtual` member rather than a manual cast.
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804B1600[];
extern s32 lbl_8053AEC4;

struct Slot0 {
    virtual void slot0(s32 arg);
};

extern "C" void* fn_8042EEC8(void* this_, s16 flag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_804B1600;
        void* p1 = *(void**)((char*)this_ + 0x4);
        if (p1 != 0) {
            ((Slot0*)p1)->slot0(1);
        }
        *(void**)((char*)this_ + 0x4) = 0;
        void* p2 = *(void**)((char*)this_ + 0x8);
        if (p2 != 0) {
            ((Slot0*)p2)->slot0(1);
        }
        *(void**)((char*)this_ + 0x8) = 0;
        void* p3 = *(void**)((char*)this_ + 0xc);
        if (p3 != 0) {
            ((Slot0*)p3)->slot0(1);
        }
        *(void**)((char*)this_ + 0xc) = 0;
        lbl_8053AEC4 = 0;
        if (flag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
