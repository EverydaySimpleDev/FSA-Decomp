#include "types.h"

// fn_802C59D4(this) - DOOR's real draw(). A pure no-op override (just
// `blr`) - DOOR renders nothing itself, confirming its visual
// representation is static level geometry rather than an actor-drawn
// model. See [[project_fsa_door_key0_full_depth]].
ASM void fn_802C59D4(void);

ASM void fn_802C59D4(void)
{
    nofralloc
    blr
}
