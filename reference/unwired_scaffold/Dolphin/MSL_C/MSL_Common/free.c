#include "types.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/critical_regions.h"

typedef struct Block {
	struct Block* prev;
	struct Block* next;
	u32 max_size;
	u32 size;
} Block;

typedef struct FixBlock FixBlock;

typedef struct FixStart {
	FixBlock* tail_;
	FixBlock* head_;
} FixStart;

typedef struct __mem_pool_obj {
	Block* start_;
	FixStart fix_start[6];
} __mem_pool_obj;

typedef struct __mem_pool {
	void* reserved[14];
} __mem_pool;

extern void __pool_free(__mem_pool* pool, void* ptr);

// NOTE: fully inlined into free() by -O4 in retail (a plain memset wrapper) -- no
// standalone address of its own.
static void __init_pool_obj(__mem_pool* pool_obj)
{
	memset(pool_obj, 0, sizeof(__mem_pool_obj));
}

static __mem_pool* get_malloc_pool(void)
{
	static __mem_pool protopool;
	static u8 init = 0;
	if (!init) {
		__init_pool_obj(&protopool);
		init = 1;
	}

	return &protopool;
}

//8015329C
void free(void* ptr)
{
	__begin_critical_region(malloc_pool_access);
	__pool_free(get_malloc_pool(), ptr);
	__end_critical_region(malloc_pool_access);
}
