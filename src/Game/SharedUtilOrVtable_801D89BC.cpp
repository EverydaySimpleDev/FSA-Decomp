#include "types.h"

extern "C" void fn_801CE2BC(void* this_);
extern "C" void fn_801E61C4(void* this_);

// fn_801D89BC(this) - if the low 3 bits of this->0x230 are clear:
// calls fn_801CE2BC(this) - the same function dtor_801D46FC's class
// calls under an equivalent condition, a 2nd independent
// cross-reference confirming fn_801CE2BC is a genuinely shared,
// class-independent utility. Otherwise, and only if state==0xf: makes
// a real virtual call through this object's own vtable slot 37 (byte
// offset 0x94). Either way: decrements a halfword timer (this->0x336)
// if nonzero, then tail-calls fn_801E61C4(this). See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why this calls
// through a real `virtual` member rather than a manual cast.
struct ActorSlot37 {
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
    virtual void v19();
    virtual void v20();
    virtual void v21();
    virtual void v22();
    virtual void v23();
    virtual void v24();
    virtual void v25();
    virtual void v26();
    virtual void v27();
    virtual void v28();
    virtual void v29();
    virtual void v30();
    virtual void v31();
    virtual void v32();
    virtual void v33();
    virtual void v34();
    virtual void slot37();
};

extern "C" void fn_801D89BC(void* this_) {
    u32 flags = *(u32*)((char*)this_ + 0x230);
    if ((flags & 7) == 0) {
        fn_801CE2BC(this_);
    } else {
        s32 state = *(s32*)((char*)this_ + 0x248);
        if (state == 0xf) {
            ((ActorSlot37*)this_)->slot37();
        }
    }
    u16 timer = *(u16*)((char*)this_ + 0x336);
    if (timer != 0) {
        *(u16*)((char*)this_ + 0x336) = timer - 1;
    }
    fn_801E61C4(this_);
}
