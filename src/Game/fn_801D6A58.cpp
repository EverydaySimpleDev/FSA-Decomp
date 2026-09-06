extern "C" void fn_801D7874(void* slot);

// fn_801D6A58(slot) - the placement-construct callback fn_801D686C's
// constructor (extab_801d686c.s) passes to __construct_array for the
// 16-slot 0x14-byte array at this+0x308. Just a trampoline to
// fn_801D7874(slot) - the SAME per-slot init the constructor's own
// follow-up loop calls directly on every slot. Returns `slot` (the
// __construct_array callback convention).
extern "C" void* fn_801D6A58(void* slot) {
    fn_801D7874(slot);
    return slot;
}
