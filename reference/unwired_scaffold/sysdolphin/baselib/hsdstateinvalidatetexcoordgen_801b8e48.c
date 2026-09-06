#include <types.h>

extern int num_tex_gens;

//801B8E48
void _HSD_StateInvalidateTexCoordGen(void)
{
    num_tex_gens = 0;
}
