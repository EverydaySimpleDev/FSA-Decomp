#include <id.h>
#include <string.h>

extern HSD_IDTable default_table;

//801D2CB8
void HSD_IDSetup(void)
{
    memset(&default_table, 0, sizeof(HSD_IDTable));
}
