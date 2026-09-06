typedef int s32;

extern "C" void fn_801CDD58(void* this_);

// fn_801E6F80(this) - IPOT's vtable-0x14 (update) override (see
// project_fsa_ipot_actor_progress.md). A simple gate: if flag bit 16 of
// this->0x230 is clear, chains to the CONFIRMED generic shared update
// dispatcher fn_801CDD58; if set, does nothing (a "suspend the normal
// per-frame behavior while this flag is active" latch - the same bit
// setParams uses to choose the static-rect vs table-driven-rect
// initialization path).
extern "C" void fn_801E6F80(void* this_) {
    s32 flags = *(s32*)((char*)this_ + 0x230);
    if (!(flags & 0x8000)) {
        fn_801CDD58(this_);
    }
}
