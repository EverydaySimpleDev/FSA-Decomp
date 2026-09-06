#include "types.h"

typedef struct PTMF {
	s32 this_delta; // self-explanatory
	s32 v_offset;   // vtable offset
	union {
		void* f_addr;  // function address
		s32 ve_offset; // virtual function entry offset (of vtable)
	} f_data;
} PTMF;

//80151434
ASM s32 __ptmf_test(register PTMF* ptmf) {
#ifdef __MWERKS__ // clang-format off
	nofralloc
		lwz       r5, PTMF.this_delta(r3)
		lwz       r6, PTMF.v_offset(r3)
		lwz       r7, PTMF.f_data(r3)
		li        r3, 0x1
		cmpwi     r5, 0
		cmpwi     cr6, r6, 0
		cmpwi     cr7, r7, 0
		bnelr-
		bnelr-    cr6
		bnelr-    cr7
		li        r3, 0
		blr
#endif // clang-format on
}

// Contrary to its "Address: N/A / UNUSED FUNCTION" vendor annotation, this
// function IS present in real retail at 0x80151464 (0x3C bytes, exactly
// between __ptmf_test and __ptmf_scall) -- transliterated directly from the
// true retail disasm since no vendored source body exists for it.
//80151464
ASM s32 __ptmf_cmpr(register PTMF* a, register PTMF* b)
{
    nofralloc
    lwz     r5, PTMF.this_delta(r3)
    lwz     r6, PTMF.this_delta(r4)
    lwz     r7, PTMF.v_offset(r3)
    lwz     r8, PTMF.v_offset(r4)
    lwz     r9, PTMF.f_data(r3)
    lwz     r10, PTMF.f_data(r4)
    li      r3, 0x1
    cmpw    r5, r6
    cmpw    cr6, r7, r8
    cmpw    cr7, r9, r10
    bnelr
    bnelr   cr6
    bnelr   cr7
    li      r3, 0x0
    blr
}

//801514A0
ASM void __ptmf_scall(...)
{
#ifdef __MWERKS__ // clang-format off
	nofralloc
		lwz     r0, PTMF.this_delta(r12)
		lwz     r11, PTMF.v_offset(r12)
		lwz     r12, PTMF.f_data(r12)
		add     r3, r3, r0
		cmpwi   r11, 0
		blt-    cr0, loc_0x20
		lwzx    r12, r3, r12
		lwzx    r12, r12, r11
	loc_0x20:
		mtctr   r12
		bctr
#endif // clang-format on
}
