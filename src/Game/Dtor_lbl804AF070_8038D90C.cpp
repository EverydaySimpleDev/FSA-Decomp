#include "types.h"

// fn_8038D90C - actor@lbl_804AF070: destructor. Reinstalls the base
// vtable; if registered at global lbl_8053AD78, releases 4 sub-
// objects (12-byte array elements at this->0x114+4*i) and one more
// sub-object at this->0x154, then this->0x4 - all via own virtual
// slot 0 (byte offset 0x8) - then clears lbl_8053AD78. Finally
// conditionally forwards to dtor_80084580. See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why this calls
// through a real `virtual` member rather than a manual cast.
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804AF070[];
extern u32 lbl_8053AD78;

struct Slot0 {
    virtual void slot0(s32 arg);
};

static void ReleaseIfSet(void* p, s32 arg) {
    if (p != 0) {
        ((Slot0*)p)->slot0(arg);
    }
}

extern "C" void* fn_8038D90C(void* this_, s16 flag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_804AF070;
        if (lbl_8053AD78 != 0) {
            for (s32 i = 0; i < 4; i++) {
                void* p = *(void**)((char*)this_ + 0x114 + 4 * i);
                if (p != 0) {
                    ReleaseIfSet(p, 1);
                    *(void**)((char*)this_ + 0x114 + 4 * i) = 0;
                }
            }
            void* p154 = *(void**)((char*)this_ + 0x154);
            if (p154 != 0) {
                ((Slot0*)p154)->slot0(1);
            }
            *(void**)((char*)this_ + 0x154) = 0;
            void* p4 = *(void**)((char*)this_ + 0x4);
            if (p4 != 0) {
                ((Slot0*)p4)->slot0(1);
            }
            *(void**)((char*)this_ + 0x4) = 0;
            lbl_8053AD78 = 0;
        }
        if (flag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
