#include "types.h"

// fn_803A87A8 - actor@lbl_804AF860 vt+0x20 slot: destructor of an
// embedded base-class sub-object. Reinstalls the sub-view vtable
// lbl_804AF878, calls fn_80083A68 on a manager sub-object
// (lbl_80529DEC->0x8), calls own virtual slot 0 (byte offset 0x8) on
// this->0x4/0x8 if set (clearing each afterward), calls a real
// virtual slot 1 (byte offset 0xc) on another manager sub-object
// (lbl_80529DEC->0x28), zeroes the global lbl_8053AD98, then
// conditionally forwards to dtor_80084580. See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why the calls
// go through real `virtual` members rather than manual casts.
extern "C" void fn_80083A68(void* p);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804AF878[];
extern u8 lbl_80529DEC[];
extern s32 lbl_8053AD98;

struct SlotA {
    virtual void slot0(s32 arg);
};

struct SlotB {
    virtual void v0();
    virtual void slot1();
};

extern "C" void* fn_803A87A8(void* this_, s16 flag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_804AF878;
        void* obj = *(void**)((u8*)lbl_80529DEC + 0x8);
        fn_80083A68(obj);
        void* p1 = *(void**)((char*)this_ + 0x4);
        if (p1 != 0) {
            ((SlotA*)p1)->slot0(1);
        }
        *(void**)((char*)this_ + 0x4) = 0;
        void* p2 = *(void**)((char*)this_ + 0x8);
        if (p2 != 0) {
            ((SlotA*)p2)->slot0(1);
        }
        *(void**)((char*)this_ + 0x8) = 0;
        void* obj2 = *(void**)((u8*)lbl_80529DEC + 0x28);
        ((SlotB*)obj2)->slot1();
        lbl_8053AD98 = 0;
        if (flag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
