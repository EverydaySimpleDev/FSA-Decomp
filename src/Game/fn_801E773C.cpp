typedef int s32;
typedef unsigned int u32;

extern "C" void* fn_801E9AFC(void* this_);
extern "C" s32 fn_801EA6D8(void* entryPtr, u32 variant, s32 id);

// fn_801E773C(this) - IPOT's vtable-0x10 override (see
// project_fsa_ipot_actor_progress.md). Extracts the spawn variant byte
// (top byte of this->0x90), calls a prep helper fn_801E9AFC, then
// computes this + this->0xf0*0x78 - an array-stride lookup into a
// 0x78-byte-per-entry embedded array indexed by a per-instance slot
// (this->0xf0) - and calls fn_801EA6D8(entryPtr, variant,
// id=this->0x198), storing the result into this->0x2ac. Reads as
// "register this instance's variant+ID into a slot of some
// per-instance embedded sub-record array", but the array's purpose
// and fn_801EA6D8's exact effect were not further traced.
extern "C" void fn_801E773C(void* this_) {
    u32 variant = *(u32*)((char*)this_ + 0x90) >> 24;
    s32 id = *(s32*)((char*)this_ + 0x198);
    void* self = fn_801E9AFC(this_);
    s32 slot = *(unsigned char*)((char*)self + 0xf0);
    void* entryPtr = (char*)self + slot * 0x78;
    *(s32*)((char*)this_ + 0x2ac) = fn_801EA6D8(entryPtr, variant, id);
}
