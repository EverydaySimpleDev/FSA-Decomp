#include "types.h"

/* fn_801DAC6C(void) -> ptr - a PARAMETERLESS lazy-init GLOBAL SINGLETON
 * accessor (guard byte `lbl_8053AC28`), NOT a per-`this` helper - every
 * caller this session that treated its result as "this instance's own
 * struct" was wrong (corrected in extab_801d8b28.s/extab_801d9c58.s/
 * extab_801da124.s/extab_801da438.s). On first call, initializes the single
 * shared struct at `lbl_804C92D0` (->0x0/0x4 = -1 sentinels, ->0x80 = 0,
 * ->0x84 halfword = 0) and always returns its address. Given the -1
 * sentinel-pair + counter + halfword-countdown shape and its use across
 * multiple unrelated actor classes this session (each reading/resetting
 * ->0x80/->0x84 or ->0x0), this looks like a genuinely global "last similar
 * event" tracker (e.g. a shared cooldown/dedup gate), not a per-actor state
 * bag.
 */

extern f32 lbl_804C92D0;


ASM void fn_801DAC6C(void);

ASM void fn_801DAC6C(void)
{
    nofralloc
    opword  0x880D9068  // lbz r0, lbl_8053AC28@sda21(r0)
    extsb. r0, r0
    opword  0x4082002C  // bne .L_801DACA0
    lis r3, lbl_804C92D0@ha
    li r0, 0x1
    addi r4, r3, lbl_804C92D0@l
    li r5, -0x1
    li r3, 0x0
    stw r5, 0x0(r4)
    stw r5, 0x4(r4)
    stw r3, 0x80(r4)
    sth r3, 0x84(r4)
    opword  0x980D9068  // stb r0, lbl_8053AC28@sda21(r0)
L_801DACA0:
    lis r3, lbl_804C92D0@ha
    addi r3, r3, lbl_804C92D0@l
    blr
}

