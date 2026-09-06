#include "types.h"

// fn_801F5778(this) - a trivial no-op draw(). Confirmed used as the
// draw() vtable slot by 9+ distinct actor vtables that share the
// generic base update() dispatcher (fn_801CDD58 - see
// [[project_fsa_rope_shared_update_dispatcher]]), including the
// "timed-cue lookup table" MI base component's own vtable
// (lbl_804A4808). These actors render nothing themselves - either
// purely logical/invisible actors, or ones whose visual is drawn
// entirely by an owned/attached sub-object instead.
ASM void fn_801F5778(void* this);

ASM void fn_801F5778(void* this)
{
    nofralloc
    blr
}

// fn_801F577C(this) - copies a paired-single position value
// (this->0xc/0xc+4, a 2-float pair) into this->0x18/0x20 (also a
// non-adjacent pair - not a plain struct copy, so likely a "commit
// current position to last-known/render position" snapshot, matching
// the position-snapshot idiom seen in fn_801CDD58's own this->0x234
// family). Immediately follows fn_801F5778 with no exception-table
// boundary between them - landed together as one leaf group.
ASM void fn_801F577C(void* this);

ASM void fn_801F577C(void* this)
{
    nofralloc
    psq_l fp1, 0xc(r3), 0, 0
    lfs fp0, 0x14(r3)
    psq_st fp1, 0x18(r3), 0, 0
    stfs fp0, 0x20(r3)
    blr
}
