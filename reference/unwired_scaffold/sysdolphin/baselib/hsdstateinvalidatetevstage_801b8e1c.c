#include <types.h>

extern int current_tev;

//801B8E1C
void _HSD_StateInvalidateTevStage(void)
{
    current_tev = 0;
}
