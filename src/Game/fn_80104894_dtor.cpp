typedef short s16;
typedef int s32;

extern "C" void dtor_801F593C(void* this_, int flag);
extern "C" void dtor_80084580(void* this_);
extern "C" void* GetRoomConfigRecord(void);
extern "C" void fn_80138B7C(void* counter);
extern void* lbl_8053AAF8;
extern void* lbl_8049CB04[];

extern "C" void* fn_80104894(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_8049CB04;
        char* p = (char*)this_;
        if (*(s32*)(p + 0x234) == 2) {
            s32 c = *(s32*)((char*)lbl_8053AAF8 + 0x4c);
            if (c != 9 && c != 11) {
                char* rec = (char*)GetRoomConfigRecord();
                *(s32*)(rec + 0x10000 + 0x328c) = 0;
                fn_80138B7C(lbl_8053AAF8);
            }
        }
        dtor_801F593C(this_, 0);
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
