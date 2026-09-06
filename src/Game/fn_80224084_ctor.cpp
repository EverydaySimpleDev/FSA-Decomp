typedef int s32;

extern "C" void* fn_802218C8(void* this_);
extern void* lbl_804A6D00[];

extern "C" void* fn_80224084(void* this_) {
    fn_802218C8(this_);
    char* p = (char*)this_;
    *(void**)p = lbl_804A6D00;
    *(s32*)(p + 0x2b8) = 0;
    *(s32*)(p + 0x2bc) = 0;
    *(s32*)(p + 0x2c0) = 0;
    return this_;
}
