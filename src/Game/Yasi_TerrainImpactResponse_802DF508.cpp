typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

struct Vec3 { float x, y, z; };

// YASI cluster, part 4/7. This actor's per-frame reaction
// when it finishes/triggers: reads its own terrain code (via the confirmed
// classifier fn_8022461C, called on this->0xc's position against
// this->0x4's room param) and spawns different sound/effect combos
// (fn_8013CC50) plus a matching settings-gated notification
// (fn_801F0E34) depending on which terrain category it lands in:
//   - "grounded" (this->0x4 >= 8): spawns a 'KMRI' actor via the generic
//     dispatcher fn_801F9484 at a position built from this->0xc/0x10 (x,y)
//     and a fixed z of 0.0 (NOT this->0x14, which is loaded then
//     immediately overwritten - matches retail's load/store grouping
//     exactly via the paired-single x,y copy).
//   - terrain 0xd, or 0x39 (checked via 2 separate fn_8022461C calls,
//     matching a genuine short-circuit `||`): plays effect 0x3d0, notifies
//     0x30022.
//   - terrain 0xe: gated further by 2 confirmed no-arg global-flag
//     queries, fn_802DE9A0/fn_802DEB58 (see extab_802d6d70.s) - each
//     picks a different effect pair (0x2a9/0x2aa or 0x45e/0x45f) and
//     notification (0x5005f/0x5003f).
//   - anything else: plays effect pair 0x8c/0x7a, notifies 0x30003.
// Always finishes by clearing this->0x11c.
extern "C" void* SpatialRegistry_GetBase(void);
extern "C" s32 fn_801F9484(void* base, u32 fourCC, s32 owner, void* posPtr, s32 param, s32 p6, s32 p7);
extern "C" u16 fn_8022461C(void* point, s32 param);
extern "C" void* fn_8013CC50(s32 flagOrThis4, void* positionPtr, u32 id, s32 gridX, s32 gridZ, void* fallbackObj, s32 secondaryFlag, s32 boundsFlag, float timeArg);
extern "C" void fn_801F0E34(void* this_, u32 effectId, u32 unused);
extern "C" u8 fn_802DE9A0(void);
extern "C" u8 fn_802DEB58(void);
extern "C" float lbl_80541168;
extern "C" float lbl_8054116C;

extern "C" void Yasi_TerrainImpactResponse(register void* this_) {
    char* p = (char*)this_;

    if (*(s32*)(p + 0x4) >= 8) {
        // Build the spawn position {this->0xc, this->0x10, 0.0f}. The
        // paired-single x,y copy (matching retail's psq_l/psq_st exactly)
        // needs an explicit asm block - MWCC's own auto-vectorizer at
        // this optimization level never fuses two adjacent scalar float
        // field copies into a ps op on its own.
        Vec3 pos;
        asm {
            psq_l f2, 0xc(this_), 0, 0
            lfs f1, 0x14(this_)
            lfs f0, lbl_80541168
            stfs f1, 0x10(r1)
            psq_st f2, 0x8(r1), 0, 0
            stfs f0, 0x10(r1)
        }
        void* base = SpatialRegistry_GetBase();
        fn_801F9484(base, 0x4b4d5249u /* 'KMRI' */, *(s32*)(p + 0x4), &pos, 0, -1, -1);
    }

    if (fn_8022461C(p + 0xc, *(s32*)(p + 0x4)) == 0xd ||
        fn_8022461C(p + 0xc, *(s32*)(p + 0x4)) == 0x39) {
        fn_8013CC50(*(s32*)(p + 0x4), p + 0xc, 0x3d0, 0, 1, 0, 0, 1, lbl_8054116C);
        fn_801F0E34(this_, 0x30022, 0);
    } else if (fn_8022461C(p + 0xc, *(s32*)(p + 0x4)) == 0xe) {
        if (fn_802DE9A0()) {
            fn_8013CC50(*(s32*)(p + 0x4), p + 0xc, 0x2a9, -1, 1, 0, 0, 1, lbl_8054116C);
            fn_8013CC50(*(s32*)(p + 0x4), p + 0xc, 0x2aa, 0, 0, 0, 0, 1, lbl_8054116C);
            fn_801F0E34(this_, 0x5005f, 0);
        } else if (fn_802DEB58()) {
            fn_8013CC50(*(s32*)(p + 0x4), p + 0xc, 0x45e, -1, 1, 0, 0, 1, lbl_8054116C);
            fn_8013CC50(*(s32*)(p + 0x4), p + 0xc, 0x45f, 0, 0, 0, 0, 1, lbl_8054116C);
            fn_801F0E34(this_, 0x5003f, 0);
        }
    } else {
        fn_8013CC50(*(s32*)(p + 0x4), p + 0xc, 0x8c, 1, 0, 0, 0, 1, lbl_8054116C);
        fn_8013CC50(*(s32*)(p + 0x4), p + 0xc, 0x7a, 1, 0, 0, 0, 1, lbl_8054116C);
        fn_801F0E34(this_, 0x30003, 0);
    }

    *(u8*)(p + 0x11c) = 0;
}
