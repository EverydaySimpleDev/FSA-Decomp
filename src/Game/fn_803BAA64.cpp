typedef int s32;

extern char lbl_8051C1A0[];

extern "C" void* OSGetCurrentThread(void);
extern "C" void fn_800855CC(void* buf, void* thread, s32 flags);
extern "C" void fn_80085674(void* buf, s32 val);
extern "C" void fn_803B9F40(void* obj);

// fn_803BAA64 - helper: sets up a stack context struct via
// fn_800855CC(buf, OSGetCurrentThread(), 0) and
// fn_80085674(buf, -1), then calls fn_803B9F40(&lbl_8051C1A0). Returns
// 0.
extern "C" s32 fn_803BAA64(void) {
    char buf[0x88];
    fn_800855CC(buf, OSGetCurrentThread(), 0);
    fn_80085674(buf, -1);
    fn_803B9F40(lbl_8051C1A0);
    return 0;
}
