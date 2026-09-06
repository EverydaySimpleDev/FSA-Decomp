#include "types.h"

// GLBS: forwarding wrapper - calls own virtual slot 5 (byte offset
// 0x14, "draw/notify passthrough"). See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why this calls
// through a real `virtual` member rather than a manual cast.
struct ActorSlot5 {
    virtual void v0();
    virtual void v1();
    virtual void v2();
    virtual void slot5();
};

extern "C" void fn_802E91D8(void* this_) {
    ((ActorSlot5*)this_)->slot5();
}
