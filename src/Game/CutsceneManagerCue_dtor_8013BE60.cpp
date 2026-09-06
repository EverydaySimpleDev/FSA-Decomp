#include "types.h"

// fn_8013BE60(this, freeFlag) - the camera/cutscene-cue-manager
// class's real destructor. Rebinds the vtable to lbl_8049F108, then
// destructs 9 embedded polymorphic sub-objects in reverse-of-
// construction order via own vtable slot 0 (byte offset 0x8) with a
// "free=1" flag: this->0x1c/0x30/0x2c/0x28/0x24/0x20, then this->0x34
// via a direct (non-virtual) call to dtor_80092364, then
// this->0x18/0x14/0x10. Reads this->0x4 and calls fn_8008383C on it.
// Finally, if freeFlag > 0, calls the base class destructor
// dtor_80084580. See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why the sub-
// object releases go through a real `virtual` member rather than a
// manual cast.
extern "C" void dtor_80092364(void* p, s32 flag);
extern "C" void fn_8008383C(void* p);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_8049F108[];

struct Slot0 {
    virtual void slot0(s32 arg);
};

extern "C" void* fn_8013BE60(void* this_, s16 flag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_8049F108;
        void* p;
        p = *(void**)((char*)this_ + 0x1c);
        if (p != 0) { ((Slot0*)p)->slot0(1); }
        p = *(void**)((char*)this_ + 0x30);
        if (p != 0) { ((Slot0*)p)->slot0(1); }
        p = *(void**)((char*)this_ + 0x2c);
        if (p != 0) { ((Slot0*)p)->slot0(1); }
        p = *(void**)((char*)this_ + 0x28);
        if (p != 0) { ((Slot0*)p)->slot0(1); }
        p = *(void**)((char*)this_ + 0x24);
        if (p != 0) { ((Slot0*)p)->slot0(1); }
        p = *(void**)((char*)this_ + 0x20);
        if (p != 0) { ((Slot0*)p)->slot0(1); }
        dtor_80092364(*(void**)((char*)this_ + 0x34), 1);
        p = *(void**)((char*)this_ + 0x18);
        if (p != 0) { ((Slot0*)p)->slot0(1); }
        p = *(void**)((char*)this_ + 0x14);
        if (p != 0) { ((Slot0*)p)->slot0(1); }
        p = *(void**)((char*)this_ + 0x10);
        if (p != 0) { ((Slot0*)p)->slot0(1); }
        fn_8008383C(*(void**)((char*)this_ + 0x4));
        if (flag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
