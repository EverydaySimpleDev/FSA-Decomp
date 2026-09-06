#include "types.h"

// YASI cluster, part 2/7. Virtual-call wrapper: invokes this object's
// own vtable slot 9 (byte offset 0x24) with no extra arguments.
// See [[reference_fsa_virtual_dispatch_codegen_trick]] for why this
// calls through a real `virtual` member rather than a manual cast.
struct ActorSlot9 {
    virtual void v0();
    virtual void v1();
    virtual void v2();
    virtual void v3();
    virtual void v4();
    virtual void v5();
    virtual void v6();
    virtual void slot9();
};

extern "C" void fn_802DF4B8(void* this_) {
    ((ActorSlot9*)this_)->slot9();
}
