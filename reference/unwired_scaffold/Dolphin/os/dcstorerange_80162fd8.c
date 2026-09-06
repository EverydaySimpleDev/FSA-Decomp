//80162FD8
void DCStoreRange(void* startAddress, unsigned long nBytes)
{
#ifdef __MWERKS__ // clang-format off
    asm {
        cmplwi r4, 0
        blelr
        clrlwi r5, r3, 27
        add r4, r4, r5
        addi r4, r4, 0x1f
        srwi r4, r4, 5
        mtctr r4
    loop:
        dcbst 0, r3
        addi r3, r3, 0x20
        bdnz loop
        sc
    }
#endif // clang-format on
}
