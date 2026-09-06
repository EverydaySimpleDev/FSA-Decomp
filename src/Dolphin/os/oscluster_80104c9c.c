#include "types.h"

// fn_80104C9C(this) - LOSW's real draw(). A pure no-op (`blr`), matching
// the SAME pattern DOOR's and SWT4's draw use ([[project_fsa_door_key0_full_depth]],
// [[project_fsa_flag_switch_helpers]]) - LOSW renders nothing itself.
ASM void fn_80104C9C(void);

ASM void fn_80104C9C(void)
{
    nofralloc
    blr
}
