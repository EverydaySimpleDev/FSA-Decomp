#include "types.h"

// fn_80220F54(this) - a SHARED draw() used DIRECTLY (no override) by 6+
// distinct actor vtables. Builds the standard shared material struct,
// then a per-ownerID byte-flag lookup (GetRoomConfigRecord()'s return
// value indexed by `this->0x4` at a large fixed offset) that can force-
// disable the material's blend flag (buf+0x1f). Branches on `this->0x248`
// (the "draw mode" field):
//  - mode==2: draws via fn_801EF574 using a shared model table
//    (lbl_8046AAA0) - the "captured/attached"-style single-primitive path.
//  - else: draws via the universal primitive fn_801F06F0 (same model
//    table, scale constant lbl_8053FE74, flag=7), then ALWAYS calls
//    fn_80307830 (this->0x198, this->0x4, this+0xc, this->0x280, 0, 1, 0,
//    4) - registers a "transient effect marker" for whichever player
//    currently tracks this actor as its owner.
extern "C" void fn_801EF574(void* table, u32 id, void* pos, void* data);
extern "C" void fn_801F06F0(void* this_, void* table, u32 id, void* data, f32 f1, f32 f2, s32 mode);
extern "C" void fn_80307830(s32 a, s32 b, void* c, s32 d, s32 e, s32 f, s32 g, s32 h);
extern "C" void* GetRoomConfigRecord(void);
extern void* lbl_8046AAA0[];
extern f32 lbl_8053FE74;

extern "C" void fn_80220F54(void* this_) {
    char* p = (char*)this_;
    u8 buf[0x40];

    *(s32*)(buf + 0x10) = -1;
    *(s32*)(buf + 0x14) = -1;

    for (u8 i = 0; i < 16; i++) {
        buf[i] = i;
    }

    buf[0x2e] = 0;
    *(s32*)(buf + 0x30) = -1;
    *(s32*)(buf + 0x10) = -1;
    *(s32*)(buf + 0x14) = 0;
    *(s32*)(buf + 0x18) = 0;
    buf[0x1c] = 0;
    buf[0x1d] = 0;
    buf[0x1e] = 0;
    buf[0x1f] = 1;
    buf[0x20] = 1;
    buf[0x21] = 0;
    buf[0x22] = 0;
    buf[0x23] = 0;
    buf[0x24] = 0;
    buf[0x25] = 0;
    buf[0x26] = 1;
    *(s32*)(buf + 0x28) = 3;
    buf[0x2c] = 1;
    buf[0x2d] = 0;
    *(s32*)(buf + 0x34) = 0;
    *(s32*)(buf + 0x38) = 2;
    *(s32*)(buf + 0x30) = 0xe;
    buf[0x2e] = 0x40;

    s32 ownerId = *(s32*)(p + 0x4);
    u8* config = (u8*)GetRoomConfigRecord();
    if (config[0x131df + ownerId] != 0) {
        buf[0x1f] = 0;
    }

    if (*(s32*)(p + 0x248) == 2) {
        fn_801EF574(lbl_8046AAA0, *(u32*)(p + 0x280), p + 0xc, buf);
    } else {
        fn_801F06F0(this_, lbl_8046AAA0, *(u32*)(p + 0x280), buf, lbl_8053FE74, lbl_8053FE74, 7);
        fn_80307830(*(s32*)(p + 0x198), *(s32*)(p + 0x4), p + 0xc, *(s32*)(p + 0x280), 0, 1, 0, 4);
    }
}
