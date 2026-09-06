typedef int s32;

extern "C" void fn_8021BD18(void* subObj, s32 arg);
extern "C" void fn_801D789C(void* child);

// fn_801D6A88(slot) - the placement-construct callback for the 4-slot
// 0x18-byte "child" array at this+0x2a8 (fn_801D686C's constructor,
// extab_801d686c.s). Calls fn_8021BD18(slot+0xc, 2) (a NEW method on a
// small sub-object embedded inside EACH child record) THEN
// fn_801D789C(slot) - the SAME per-slot init the constructor's
// follow-up loop calls directly again afterward. Returns `slot` (the
// __construct_array callback convention).
extern "C" void* fn_801D6A88(void* slot) {
    fn_8021BD18((char*)slot + 0xc, 2);
    fn_801D789C(slot);
    return slot;
}
