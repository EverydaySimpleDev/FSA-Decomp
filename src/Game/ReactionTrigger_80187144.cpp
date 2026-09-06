#include "types.h"

extern "C" void fn_801F0E34(void* this_, u32 effectId, u32 unused);
extern f32 lbl_8053DFE0;
extern f32 lbl_8053DFE4;

// FGN2 (vtable lbl_804A1A98) cluster, part 1. fn_80187144 - short
// reaction trigger: calls fn_801F0E34 with a fixed sound/effect ID
// (0x40047), then invokes this object's own vtable slot 10 (byte
// offset 0x28) with a signed byte field from this->0x2ee and 2 fixed
// float params. See [[reference_fsa_virtual_dispatch_codegen_trick]]
// for why this calls through a real `virtual` member rather than a
// manual cast.
struct ActorSlot10 {
    virtual void v0();
    virtual void v1();
    virtual void v2();
    virtual void v3();
    virtual void v4();
    virtual void v5();
    virtual void v6();
    virtual void v7();
    virtual void slot10(s32 arg, f32 a, f32 b);
};

extern "C" void fn_80187144(void* this_) {
    fn_801F0E34(this_, 0x40047, 0);
    s8 field = *(s8*)((char*)this_ + 0x2ee);
    ((ActorSlot10*)this_)->slot10(field, lbl_8053DFE0, lbl_8053DFE4);
}
