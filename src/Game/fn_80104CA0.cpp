#include "types.h"

// fn_80104CA0(this): LOSW's real update() - a "4-flag consensus checker"
// tick. Advances a mod-50 counter (this->0x24c/0x24d) that triggers a
// fn_801F0D20 sound-cue (ID 3) and resets. If this->0x24e==1, skips
// straight to the tail (already resolved). Otherwise dispatches on
// this->0x240 (0-3, the "consensus mode"): modes 0/1/2 all loop over
// LOSW's own 4 group indices (this->0x230-family, stride 4) calling
// GetRoomConfigRecord then fn_802D800C(groupIndex) and counting matches
// (mode 0 ALSO counts a group as a "match" if its own index field is 0,
// i.e. an unused slot trivially satisfies the unanimous check): mode 0 =
// ALL 4 flags must be set (unanimous), mode 1 = AT LEAST ONE flag set
// (an OR-gate), mode 2 = a MIXED check (neither all-set nor all-clear -
// 1, 2, or 3 of 4 matched). mode<0 or mode>=3: no loop runs, consensus
// stays false. If consensus reached: calls
// fn_80104EB0(this) and, on its success, a virtual call through
// this->vtable[slot 12] (arg 0xff, 1), sets this->0x24c from a this->0x90
// flag bit, resets this->0x24d, and if this->0x244 is set, marks
// this->0x24e=1 (resolved). If NOT reached: a virtual call through
// this->vtable[slot 12] (arg 0xff, 0), resets this->0x24c/0x24d, and if
// this->0x24f was set, clears it, this->0x24a, and calls fn_80230534.
extern "C" void* GetRoomConfigRecord(void);
extern "C" u8 fn_802D800C(void*, u32);
extern "C" void fn_801F0D20(char* this_, u32 code);
extern "C" u8 fn_80104EB0(void* this_);
extern "C" void fn_80230534(s32 a);

struct LoswVtable {
    virtual void v0(); virtual void v1(); virtual void v2(); virtual void v3();
    virtual void v4(); virtual void v5(); virtual void v6(); virtual void v7();
    virtual void v8(); virtual void v9();
    virtual void slot12(s32 a, s32 b);
};

extern "C" void fn_80104CA0(void* this_) {
    char* t = (char*)this_;

    if (*(u8*)(t + 0x24c)) {
        *(u8*)(t + 0x24d) = *(u8*)(t + 0x24d) + 1;
        if (*(u8*)(t + 0x24d) == 0x32) {
            fn_801F0D20(t, 3);
            *(u8*)(t + 0x24c) = 0;
        }
    }

    if (*(u8*)(t + 0x24e) == 1) {
        return;
    }

    s32 mode = *(s32*)(t + 0x240);
    s32 matchCount = 0;
    s32 consensus = 0;

    if (mode == 1) {
        goto mode1Body;
    } else if (mode >= 1) {
        goto checkMode3;
    }
    if (mode >= 0) {
        goto mode0Body;
    }
    goto dispatchDone;
checkMode3:
    if (mode >= 3) {
        goto dispatchDone;
    }
    goto mode2Body;
mode0Body:
    for (s32 i = 0; i < 4; i++) {
        void* config = GetRoomConfigRecord();
        u32 groupIdx = *(u32*)(t + 0x230 + i * 4);
        if (fn_802D800C(config, groupIdx) || *(s32*)(t + 0x230 + i * 4) == 0) {
            matchCount++;
        }
    }
    if (matchCount == 4) {
        consensus = 1;
    }
    goto dispatchDone;
mode1Body:
    for (s32 i = 0; i < 4; i++) {
        void* config = GetRoomConfigRecord();
        u32 groupIdx = *(u32*)(t + 0x230 + i * 4);
        if (fn_802D800C(config, groupIdx)) {
            matchCount++;
        }
    }
    if (matchCount != 0) {
        consensus = 1;
    }
    goto dispatchDone;
mode2Body:
    for (s32 i = 0; i < 4; i++) {
        void* config = GetRoomConfigRecord();
        u32 groupIdx = *(u32*)(t + 0x230 + i * 4);
        if (fn_802D800C(config, groupIdx)) {
            matchCount++;
        }
    }
    if (matchCount != 0 && matchCount != 4) {
        consensus = 1;
    }
dispatchDone:;

    if (consensus != 0) {
        if (fn_80104EB0(this_)) {
            ((LoswVtable*)this_)->slot12(0xff, 1);
            if (*(u32*)(t + 0x90) & 0x20) {
                *(u8*)(t + 0x24c) = 1;
            }
            *(u8*)(t + 0x24d) = 0;
            if (*(s32*)(t + 0x244) != 0) {
                *(u8*)(t + 0x24e) = 1;
            }
        }
    } else {
        ((LoswVtable*)this_)->slot12(0xff, 0);
        *(u8*)(t + 0x24c) = 0;
        if (*(u8*)(t + 0x24f)) {
            *(u8*)(t + 0x24f) = 0;
            *(u16*)(t + 0x24a) = 0;
            fn_80230534(0);
        }
    }
}
