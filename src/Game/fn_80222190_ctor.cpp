typedef int s32;

extern "C" void* fn_802218C8(void* this_);
extern void* lbl_804A6AA8[];

extern "C" void* fn_80222190(void* this_) {
    fn_802218C8(this_);
    char* p = (char*)this_;
    *(void**)p = lbl_804A6AA8;
    *(s32*)(p + 0x2b8) = 0;
    *(char*)(p + 0x2c8) = 0;
    return this_;
}
