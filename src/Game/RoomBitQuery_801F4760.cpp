#include "types.h"

extern "C" void* GetRoomConfigRecord(void);
extern "C" s32 fn_802D800C(void*, s32);

// fn_801F4760(this) - the shared "vtable slot 15" query used
// constantly throughout RUPY's own code, and almost certainly a
// generic Actor-vtable query beyond just RUPY. Calls the actor's own
// vtable slot 15 (byte offset 0x3c) first (a per-class-defined "room
// requirement bit index" accessor); if that returns 0, the whole
// query is false. Otherwise, calls vtable slot 15 a SECOND time,
// fetches the level/room config record, and asks fn_802D800C whether
// the current room's data has that specific bit set. See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why this calls
// through a real `virtual` member rather than a manual cast.
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
    virtual s32 slot15();
};

extern "C" s32 fn_801F4760(void* this_) {
    ActorSlot15* actor = (ActorSlot15*)this_;
    if (actor->slot15() != 0) {
        s32 roomIdx = actor->slot15();
        void* configRecord = GetRoomConfigRecord();
        return fn_802D800C(configRecord, roomIdx);
    }
    return 0;
}
