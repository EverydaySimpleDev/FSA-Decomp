#include "PowerPC_EABI_Support/Runtime/NMWException.h"
#include "PowerPC_EABI_Support/Runtime/__ppc_eabi_linker.h"

static int fragmentID = -2;

/**
 * @note Address: 0x800C22C4
 * @note Size: 0x8
 */
ASM static char* GetR2()
{
#ifdef __MWERKS__ // clang-format off
	nofralloc
	mr r3, r2
	blr
#endif // clang-format on
}
extern "C" {
//80067A18
ASM void __fini_cpp_exceptions()
{
#ifdef __MWERKS__ // clang-format off
	nofralloc
	stwu    r1, -0x10(r1)
	mflr    r0
	stw     r0, 0x14(r1)
	lwz     r3, fragmentID
	cmpwi   r3, -0x2
	beq     L_80067A3C
	bl      __unregister_fragment
	li      r0, -0x2
	stw     r0, fragmentID
L_80067A3C:
	lwz     r0, 0x14(r1)
	mtlr    r0
	addi    r1, r1, 0x10
	blr
#endif // clang-format on
}

//80067A4C
ASM void __init_cpp_exceptions()
{
#ifdef __MWERKS__ // clang-format off
	nofralloc
	stwu    r1, -0x10(r1)
	mflr    r0
	stw     r0, 0x14(r1)
	lwz     r0, fragmentID
	cmpwi   r0, -0x2
	bne     L_80067A7C
	bl      GetR2
	lis     r5, _eti_init_info@ha
	mr      r4, r3
	addi    r3, r5, _eti_init_info@l
	bl      __register_fragment
	stw     r3, fragmentID
L_80067A7C:
	lwz     r0, 0x14(r1)
	mtlr    r0
	addi    r1, r1, 0x10
	blr
#endif // clang-format on
}
}

DECL_SECT(".ctors") extern void* const __init_cpp_exceptions_reference  = __init_cpp_exceptions;
DECL_SECT(".dtors") extern void* const __destroy_global_chain_reference = __destroy_global_chain;
DECL_SECT(".dtors") extern void* const __fini_cpp_exceptions_reference  = __fini_cpp_exceptions;
