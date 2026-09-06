typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void* GetRoomConfigRecord(void);
extern "C" void fn_802D7934(void* cfg, u32 val);

extern "C" void fn_802F4888(void* this_) {
    void* cfg = GetRoomConfigRecord();
    u32 sp = *(u32*)((char*)this_ + 0x90);
    fn_802D7934(cfg, sp & 0xF);
    *(u8*)((char*)this_ + 0x11c) = 0;
}
