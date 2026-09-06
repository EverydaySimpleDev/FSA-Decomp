#include "types.h"
#include "Dolphin/os.h"

extern void __OSDispatchInterrupt(register __OSException exception, register OSContext* context);

//80042E54
ASM void ExternalInterruptHandler(register __OSException exception, register OSContext* context)
{
#pragma unused(exception)
	nofralloc
	OS_EXCEPTION_SAVE_GPRS(context)

	stwu r1, -8(r1)
	b __OSDispatchInterrupt
}
