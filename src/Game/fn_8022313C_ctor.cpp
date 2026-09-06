typedef int s32;

extern "C" void* fn_802218C8(void* this_);
extern void* lbl_804A6C38[];

extern "C" void* fn_8022313C(void* this_) {
    fn_802218C8(this_);
    char* p = (char*)this_;
    *(void**)p = lbl_804A6C38;
    *(s32*)(p + 0x2b8) = -1;
    return this_;
}
