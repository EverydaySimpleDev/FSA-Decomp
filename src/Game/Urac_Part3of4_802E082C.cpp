// URAC cluster, part 3/4. Uses the per-room config family
// GetRoomConfigRecord/fn_802D77BC.

typedef unsigned int u32;

extern "C" void* GetRoomConfigRecord(void);
extern "C" void fn_802D77BC(void* record, u32 field4, u32 flag);

extern "C" void fn_802E082C(void* this_) {
    fn_802D77BC(GetRoomConfigRecord(), *(u32*)((char*)this_ + 0x4), 1);
}
