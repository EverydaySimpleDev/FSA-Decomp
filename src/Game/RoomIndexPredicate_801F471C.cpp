#include "types.h"

extern "C" void* GetRoomConfigRecord(void);
extern "C" s32 fn_802D7E04(void*, s32);

// Universal base-Actor default (vtable slot 0x3c/4=15): "is in my current
// room" predicate. Calls the "get room index" virtual hook, then checks
// membership via the confirmed GetRoomConfigRecord/fn_802D7E04 pair.
//
// Calls the vtable hook through a real C++ `virtual` member (rather than
// this project's usual manual `(*(FnPtr**)this)[slot]` cast pattern) to
// get MWCC's own intrinsic virtual-dispatch codegen, which reuses a single
// register for the vtable-fetch-then-funcptr-fetch chain
// (`lwz r12,0(r3) / lwz r12,SLOT(r12)`) - the manual cast form instead
// picks two different scratch registers, which never matches retail. This
// local `ActorSlot15` struct is NOT a claim about Actor's real vtable
// layout (the full slot count/signatures aren't established) - it exists
// only so MWCC's virtual-call codegen places slot 15 at the right byte
// offset (13 dummy slots + 1 real one = offset 0x3c, confirmed
// empirically: a class with N virtuals before the real one puts it at
// byte offset 8+4*N).
struct ActorSlot15 {
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
    virtual s32 getRoomIdx();
};

extern "C" s32 fn_801F471C(void* this_) {
    s32 roomIdx = ((ActorSlot15*)this_)->getRoomIdx();
    void* configRecord = GetRoomConfigRecord();
    return fn_802D7E04(configRecord, roomIdx);
}
