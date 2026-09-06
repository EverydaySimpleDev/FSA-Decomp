#include "types.h"

// See [[reference_fsa_virtual_dispatch_codegen_trick]] for why these call
// through a real `virtual` member rather than a manual cast.
struct ActorSlot5 {
    virtual void v0();
    virtual void v1();
    virtual void v2();
    virtual void slot5();
};

// fn_8013B460(this) - forwards to this->0x14's OWN vtable slot 0x14 (a 4th
// polymorphic sub-object, distinct from the 0x8/0xc/0x24 ones seen so far).
extern "C" void fn_8013B460(void* this_) {
    ActorSlot5* sub = *(ActorSlot5**)((char*)this_ + 0x14);
    sub->slot5();
}

// fn_8013B490(this) - sibling of fn_8013B460: same vtable-slot-0x14 forward,
// but on this->0x10 (a 5th polymorphic sub-object).
extern "C" void fn_8013B490(void* this_) {
    ActorSlot5* sub = *(ActorSlot5**)((char*)this_ + 0x10);
    sub->slot5();
}
