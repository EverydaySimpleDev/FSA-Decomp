#include "types.h"

extern "C" void fn_801F0E34(void* this_, u32 effectId, u32 unused);
extern f32 lbl_8053E0C8;
extern f32 lbl_8053E0CC;

// BPH2 (vtable lbl_804A1E50) cluster, part 1. fn_8018A8D8 - reaction
// trigger, same idiom as FGN2's fn_80187144: calls fn_801F0E34 with a
// fixed effect ID (0x40015) then invokes this object's own vtable
// slot 10 (byte offset 0x28) with 2 fixed float params. See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why this calls
// through a real `virtual` member rather than a manual cast.
struct ActorSlot10 {
    virtual void v0();
    virtual void v1();
    virtual void v2();
    virtual void v3();
    virtual void v4();
    virtual void v5();
    virtual void v6();
    virtual void v7();
    virtual void slot10(u32 arg, f32 a, f32 b);
};

extern "C" void fn_8018A8D8(void* this_) {
    fn_801F0E34(this_, 0x40015, 0);
    ((ActorSlot10*)this_)->slot10(2, lbl_8053E0C8, lbl_8053E0CC);
}
