typedef int s32;

extern char lbl_80536C50[];

extern "C" s32 fn_8030DFE8(void* subObj, void* matrix);
extern "C" void PSMTXCopy(void* src, void* dst);

// fn_8013BB64(this) - resets the fog/color object (this->0x24) via
// fn_8030DFE8(obj,NULL), refreshes lbl_80536C50->0x48/0x4c from this
// instance's own camera pair (this->0x8/0xc - the same fields
// fn_8013AC54 mirrors from the singleton itself, confirming
// lbl_80536C50 tracks WHICHEVER instance last ran this refresh), then
// copies a Mtx from this->0x24+4 (skipping a leading 4-byte field,
// likely a vtable ptr) into lbl_80536C50 via PSMTXCopy.
extern "C" void fn_8013BB64(void* this_) {
    fn_8030DFE8(*(void**)((char*)this_ + 0x24), 0);
    *(s32*)(lbl_80536C50 + 0x48) = *(s32*)((char*)this_ + 0x8);
    *(s32*)(lbl_80536C50 + 0x4c) = *(s32*)((char*)this_ + 0xc);
    PSMTXCopy(*(char**)((char*)this_ + 0x24) + 0x4, lbl_80536C50);
}
