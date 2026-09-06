#include "types.h"

// Registry_GetSlotValueOrFallback(registry, idx) - reads the record pointer at
// registry->recordArray[idx] (offset 0x8). If that record's own +0x4
// field is 0, returns a per-index value from a parallel array at
// registry+0x100c; otherwise returns a single shared fallback value at
// registry+0x200c. A "per-slot value with shared default" accessor.
extern "C" u32 Registry_GetSlotValueOrFallback(void* registry, s32 idx) {
	void** recordArray = (void**)((char*)registry + 0x8);
	void* record = recordArray[idx];
	if (*(s32*)((char*)record + 0x4) == 0) {
		u32* perIndexArray = (u32*)((char*)registry + 0x100c);
		return perIndexArray[idx];
	} else {
		return *(u32*)((char*)registry + 0x200c);
	}
}
