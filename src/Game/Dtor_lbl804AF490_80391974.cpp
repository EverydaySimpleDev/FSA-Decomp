#include "types.h"

// fn_80391974 - actor@lbl_804AF490: destructor. Reinstalls the base
// vtable, calls own virtual slot 0 (byte offset 0x8) on this->0x48 and
// this->0x4c if set, clearing each afterward, then conditionally
// forwards to dtor_80084580. See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why this calls
// through a real `virtual` member rather than a manual cast.
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804AF490[];

struct Slot0 {
    virtual void slot0(s32 arg);
};

extern "C" void* fn_80391974(void* this_, s16 flag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_804AF490;
        void* p1 = *(void**)((char*)this_ + 0x48);
        if (p1 != 0) {
            ((Slot0*)p1)->slot0(1);
        }
        *(void**)((char*)this_ + 0x48) = 0;
        void* p2 = *(void**)((char*)this_ + 0x4c);
        if (p2 != 0) {
            ((Slot0*)p2)->slot0(1);
        }
        *(void**)((char*)this_ + 0x4c) = 0;
        if (flag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
