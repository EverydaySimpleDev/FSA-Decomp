typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

extern void* lbl_8053AAF8[2];
extern "C" void* lbl_8053AC98;
extern "C" float lbl_80541168;
extern "C" float lbl_80541170;

extern "C" void* fn_8023E7B0(s32 id);
extern "C" u32 fn_8023DE58(s32 id);
extern "C" u32 fn_8023BCD4(s32 id);
extern "C" u8 fn_801F2618(void* this_, s32 p2, s32 p3);
extern "C" u16 fn_80226850(void* point, s32 param);
extern "C" void fn_802A381C(void* managerPtr, void* posPtr, s32 param, s32 code);
extern "C" u8 fn_801F2B7C(void* this_, s32 p2, s32 ownerId, s32 p4);
extern "C" u8 fn_801F2B20(void* this_, s32 p2);

struct ActorVT9 {
    virtual void v0(); virtual void v1(); virtual void v2(); virtual void v3();
    virtual void v4(); virtual void v5(); virtual void v6();
    virtual void slot9();
};

// YASI cluster, part 6/7. This actor's per-frame "am I
// still following my launch trajectory" update. Unconditionally marks
// itself inactive (this->0x234=0xff) first.
//
// If this->0xc4 is set: re-anchors itself onto a fresh spawn record via
// fn_8023E7B0(this->0xc8) (position xyz), fn_8023DE58 (owner/room id
// into this->0x4) and fn_8023BCD4 (re-derives this->0x234's real
// category) - a "respawn/re-home" path.
//
// Otherwise: integrates position by velocity (this->0xc/0x10/0x14 +=
// this->0x3c/0x40/0x44, x/y as one paired-single add, z via a second
// scalar-mode paired add - the standard Gekko Vec3-as-2-paired-singles
// idiom; kept as an inline asm block because MWCC's own auto-vectorizer
// at this optimization level never fuses adjacent scalar float
// arithmetic into a real ps_add on its own) and decays this->0x44 by a
// fixed step first. Reads this->0x114 into a local (zeroed if the
// confirmed global mode flag lbl_8053AAF8->0x7f is set), then dispatches
// on whether it has crossed z=0 yet: if not yet crossed (z>=0) and the
// confirmed trajectory-arrival check fn_801F2618 says it hasn't landed,
// defers to fn_801F2B7C/fn_801F2B20 (a secondary "did it hit something
// else" pair) before invoking its own vtable slot 9 (the shared "on
// landed" reaction, same slot RupeeContainerUpdate's owner-phase code
// also invokes). If it HAS crossed z=0 (or fn_801F2618 says it landed),
// checks the terrain code under it via fn_80226850 and fires a
// splash/impact call (fn_802A381C(lbl_8053AC98, ...)) for water-category
// codes 0x90/0x91 before the same vtable slot 9 call.
extern "C" void Yasi_update(register void* this_) {
    char* p = (char*)this_;
    *(u8*)(p + 0x234) = 0xff;

    if (*(u8*)(p + 0xc4) != 0) {
        void* src = fn_8023E7B0(*(s32*)(p + 0xc8));
        *(float*)(p + 0xc) = *(float*)((char*)src + 0x0);
        *(float*)(p + 0x10) = *(float*)((char*)src + 0x4);
        *(float*)(p + 0x14) = *(float*)((char*)src + 0x8);
        *(s32*)(p + 0x4) = (s32)fn_8023DE58(*(s32*)(p + 0xc8));
        *(u8*)(p + 0x234) = (u8)fn_8023BCD4(*(s32*)(p + 0xc8));
        return;
    }

    register float t0, t1;
    asm {
        lfs t1, 0x44(this_)
        lfs t0, lbl_80541170
        fadds t0, t1, t0
        stfs t0, 0x44(this_)
        psq_l t1, 0xc(this_), 0, 0
        psq_l t0, 0x3c(this_), 0, 0
        ps_add t0, t1, t0
        psq_st t0, 0xc(this_), 0, 0
        psq_l t1, 0x14(this_), 1, 0
        psq_l t0, 0x44(this_), 1, 0
        ps_add t0, t1, t0
        psq_st t0, 0x14(this_), 1, 0
    }

    s32 flagArg = *(s32*)(p + 0x114);
    if (*(u8*)((char*)lbl_8053AAF8[0] + 0x7f) != 0) {
        flagArg = 0;
    }

    if (*(float*)(p + 0x14) < lbl_80541168) {
        goto check_terrain;
    }
    if (!fn_801F2618(this_, 0, 0)) {
        goto not_landed;
    }

check_terrain:
    if (*(float*)(p + 0x14) < lbl_80541168) {
        u16 code = fn_80226850(p + 0xc, *(s32*)(p + 0x4));
        if (code == 0x90) {
            fn_802A381C(lbl_8053AC98, p + 0xc, *(s32*)(p + 0x4), 0x91);
        } else {
            code = fn_80226850(p + 0xc, *(s32*)(p + 0x4));
            if (code == 0x91) {
                fn_802A381C(lbl_8053AC98, p + 0xc, *(s32*)(p + 0x4), 0x92);
            }
        }
    }
    ((ActorVT9*)this_)->slot9();
    return;

not_landed:
    if (!fn_801F2B7C(this_, flagArg, *(s32*)(p + 0xc8), 4)) {
        if (!fn_801F2B20(this_, 0)) {
            return;
        }
    }
    ((ActorVT9*)this_)->slot9();
}
