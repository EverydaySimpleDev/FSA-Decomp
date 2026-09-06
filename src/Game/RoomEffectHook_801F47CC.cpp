#include "types.h"

extern "C" void* GetRoomConfigRecord(void);
extern "C" void fn_802D8050(void*, s32, s32, s32);

// Universal base-Actor default (vtable slot 0x3c/4=15): generic
// "trigger room-scoped effect" hook(this, a, b). Calls the "get room
// index" virtual hook twice - once to gate on validity, once to obtain
// the room index actually used - then calls the confirmed
// GetRoomConfigRecord/fn_802D8050 pair with the caller-supplied (a, b).
//
// See RoomIndexPredicate_801F471C.cpp's ActorSlot15 for why this calls
// the vtable hook via a real `virtual` member rather than a manual cast -
// duplicated here (not shared via a header) since it's a tiny, purely
// local codegen device, not a real shared type.
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

extern "C" void fn_801F47CC(void* this_, s32 a, s32 b) {
    ActorSlot15* actor = (ActorSlot15*)this_;
    if (actor->getRoomIdx() != 0) {
        s32 roomIdx = actor->getRoomIdx();
        void* configRecord = GetRoomConfigRecord();
        fn_802D8050(configRecord, roomIdx, b, a);
    }
}
