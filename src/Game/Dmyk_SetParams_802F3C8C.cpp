// fn_802F3C8C - DMYK: setParams. Extracts bitfields from this->0x90 into
// this->0x230/0x234/0x238, sets this->0x23c=-1. If this->0x234==this->0x238,
// spawns a "PEFF" FourCC effect actor via fn_801F9484 (storing the handle
// back at 0x23c) and calls fn_8038BD08 (unfamiliar SDK utility) with
// position/params; otherwise clears flag byte this->0x11c. DMYK likely
// spawns a decorative "dummy key" particle effect, consistent with the
// lock/key-adjacent actors found elsewhere (TKRA, unnamed-@lbl_804A9FB0).

typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

struct Vec3 { float x, y, z; };

extern "C" void* SpatialRegistry_GetBase(void);
extern "C" s32 fn_801F9484(void* base, u32 fourCC, u32 owner, void* posPtr, u32 param, s32 p6, s32 p7);
extern "C" void fn_8038BD08(s32 a, s32 b, u32 owner, void* buf, s32 size);

extern "C" void Dmyk_SetParams(register void* this_) {
    char* p = (char*)this_;
    *(s32*)(p + 0x230) = *(u32*)(p + 0x90) & 0xfff;
    *(s32*)(p + 0x234) = (*(u32*)(p + 0x90) >> 12) & 0xf;
    *(s32*)(p + 0x238) = (*(u32*)(p + 0x90) >> 16) & 0xf;
    *(s32*)(p + 0x23c) = -1;
    s32 field234 = *(s32*)(p + 0x234);
    if (field234 == *(s32*)(p + 0x238)) {
        void* base = SpatialRegistry_GetBase();
        s32 handle = fn_801F9484(base, 0x50454646u /* 'PEFF' */, *(u32*)(p + 0x4), p + 0xc, (field234 & 3) | 0x24, -1, -1);
        *(s32*)(p + 0x23c) = handle;
        Vec3 pos;
        register char* dst = (char*)&pos;
        u32 owner2 = *(u32*)(p + 0x4);
        // MWCC's auto-vectorizer never fuses two adjacent scalar float
        // field copies into a paired-single op on its own - needs an
        // explicit asm block, same idiom as Yasi_TerrainImpactResponse.
        asm {
            psq_l f1, 0xc(this_), 0, 0
            lfs f0, 0x14(this_)
            psq_st f1, 0x0(dst), 0, 0
            stfs f0, 0x8(dst)
        }
        fn_8038BD08(*(s32*)(p + 0x238), *(s32*)(p + 0x230), owner2, &pos, 0x21);
    } else {
        *(u8*)(p + 0x11c) = 0;
    }
}
