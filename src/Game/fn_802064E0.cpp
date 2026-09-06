typedef int s32;
typedef unsigned char u8;

extern "C" void* GetRoomConfigRecord(void);
extern "C" u8 fn_802D7F40(void* record, s32 roomIdx);

// NEW ACTOR (vtable lbl_804A5A30). Room-membership predicate: true
// when this->0x354 (a room index) is set and matches via the confirmed
// GetRoomConfigRecord/fn_802D7F40 pair.
extern "C" s32 fn_802064E0(void* this_) {
    s32 result = 0;
    s32 roomIdx = *(s32*)((char*)this_ + 0x354);
    if (roomIdx != 0) {
        if (fn_802D7F40(GetRoomConfigRecord(), roomIdx)) {
            result = 1;
        }
    }
    return result;
}
