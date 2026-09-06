#include "types.h"

extern "C" void fn_801F35AC(void* this_);

// fn_802E4D20 - BLZ2: virtual-call wrapper (slot 21, byte offset 0x54)
// + fn_801F35AC. See [[reference_fsa_virtual_dispatch_codegen_trick]]
// for why this calls through a real `virtual` member rather than a
// manual cast.
struct ActorSlot21 {
    virtual void v0();
    virtual void v1();
    virtual void v2();
    virtual void v3();
    virtual void v4();
    virtual void v5();
    virtual void v6();
    virtual void v7();
    virtual void v8();
    virtual void v9();
    virtual void v10();
    virtual void v11();
    virtual void v12();
    virtual void v13();
    virtual void v14();
    virtual void v15();
    virtual void v16();
    virtual void v17();
    virtual void v18();
    virtual void slot21();
};

extern "C" void fn_802E4D20(void* this_) {
    ((ActorSlot21*)this_)->slot21();
    fn_801F35AC(this_);
}
