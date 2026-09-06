// fn_802F1574 - SWDL: setParams. Reads the ambient effect group byte and
// mirrors it into this->0x258/0x25c, branches on fn_80237060(0)'s result
// to clear either the "active" flag (0x11c) or a counter (0x244), sets a
// run of paired int/int field defaults (0x234/0x238/0x23c/0x240 = 0,
// 0x264/0x268/0x26c/0x270 = 2), then allocates and placement-constructs
// an owned sub-object at this->0x230 - the same owned-sub-object
// composition pattern (same size 0x5c, same (0,0,8) constructor args) as
// WAVE/SDSM, see Wave_SetParams_802E73B4.cpp for the operator new/delete
// unlock this pattern needed.

typedef unsigned char u8;
typedef int s32;

class WaveController {
public:
    WaveController(s32 a, s32 b, s32 c);
    ~WaveController();
private:
    unsigned char pad[0x5c];
};

extern "C" u8 Glwp_GetAmbientEffectGroupByte(void);
extern "C" s32 fn_80237060(s32 arg);

extern "C" void Swdl_SetParams(void* this_) {
    char* p = (char*)this_;
    u8 byte = Glwp_GetAmbientEffectGroupByte();
    *(s32*)(p + 0x258) = byte;
    *(s32*)(p + 0x25c) = *(s32*)(p + 0x258);
    s32 r = fn_80237060(0);
    if (r == 2) {
        *(u8*)(p + 0x11c) = 0;
    } else {
        *(s32*)(p + 0x244) = 0;
    }
    *(s32*)(p + 0x234) = 0;
    *(s32*)(p + 0x264) = 2;
    *(s32*)(p + 0x238) = 0;
    *(s32*)(p + 0x268) = 2;
    *(s32*)(p + 0x23c) = 0;
    *(s32*)(p + 0x26c) = 2;
    *(s32*)(p + 0x240) = 0;
    *(s32*)(p + 0x270) = 2;
    *(WaveController**)(p + 0x230) = new WaveController(0, 0, 8);
}
