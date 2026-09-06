typedef int s32;
typedef unsigned int u32;
typedef unsigned char u8;

extern void* lbl_8053AAF8[2];
extern void* lbl_8053AF80;
extern "C" u8 fn_8022BB48(s32 id, void* pos);
extern "C" u8 fn_8022BC38(s32 idx, s32 id, void* pos);
extern "C" u8 fn_8030381C(s32 idx);
extern "C" void fn_803037D4(s32 idx, s32 code);
extern "C" void fn_80458880(void* global, s32 code, s32 arg);

extern "C" void fn_801F0D20(char* this_, u32 code) {
    if (code == 3 || code == 0x42) {
        s32 id = *(s32*)(this_ + 0x4);
        if (id >= 8 && !fn_8022BB48(id, this_ + 0xc)) {
            return;
        }
        u8 found = 0;
        for (s32 i = 0; i < 4; i++) {
            u8 mask = *(u8*)((char*)lbl_8053AAF8[0] + 0x82);
            u8 bit = 1 << i;
            if (mask & bit) {
                if (*(s32*)(this_ + 0x4) >= 8) {
                    if (fn_8022BC38(i, *(s32*)(this_ + 0x4), this_ + 0xc)) {
                        if (fn_8030381C(i)) {
                            if (code == 3) {
                                fn_803037D4(i, 0xf);
                            } else {
                                fn_803037D4(i, 0xe);
                            }
                            found = 1;
                        }
                    }
                }
            }
        }
        if (found == 1) {
            return;
        }
    }
    fn_80458880(lbl_8053AF80, code, -1);
}
