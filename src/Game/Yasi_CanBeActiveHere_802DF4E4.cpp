typedef unsigned int u32;
typedef int s32;

// YASI cluster, part 3/7. A thin wrapper around the shared
// "can this actor be active here" gate fn_801F132C (see extab_801f132c.s),
// passing this actor's own +0x230 state block as the gate's per-instance
// scratch pointer.
extern "C" s32 fn_801F132C(void* this_, u32 param2, u32 param3, void* statePtr);

extern "C" s32 Yasi_CanBeActiveHere(void* this_, u32 param2, u32 param3) {
    return fn_801F132C(this_, param2, param3, (u32*)((char*)this_ + 0x230));
}
