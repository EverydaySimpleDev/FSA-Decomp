# ENBZ cluster, part 4/4 (232B). setParams - extracts a nibble of the
# spawn parameter (this->0x90) into this->0x240 (defaulting to 3 if
# zero), resets a run of sentinel fields (0x244-0x27c) to -1, and
# clears state (this->0x230). No extab, no calls.
#
# Fully understood: this->0x244..0x27c reset to -1 / this->0x230 to 0;
# this->0x234/0x238 default to 0, then (unless the spawn param's low
# byte is 0xff) overwritten from a 2-word lookup table
# (lbl_804A2C80, 6 entries/8 bytes each, indexed by that low byte);
# this->0x23c = ((spawnParam>>8)&0xf != 0); this->0x240 =
# (spawnParam>>12)&0xf, defaulting to 3 if 0.
#
# NOTE: attempted real-C++ promotion 16 times (this session). Got to
# 214/232 bytes byte-exact (verified via direct DOL comparison, not
# just main.dol OK) - only an 18-byte tail (the -1/0 sentinel-reset
# register assignment) remains wrong. 3 real, useful findings along
# the way:
# 1. dtk's `extrwi[.] rD,rS,n,b` comment params are NOT reliably
#    "extract n bits starting at MSB bit b" - verify the actual SH via
#    a real byte compare, don't trust the arithmetic derivation (both
#    this function's nibble extracts needed empirically-found shifts
#    that didn't match the naive b/n->shift formula).
# 2. The idx*8 table-offset multiply is SPLIT by retail into an early
#    *2 (computed right after the FIRST spawn-param load, before the
#    0xff guard) and a later *4 (right before the lwzx) - reproducible
#    by manually pre-shifting a local (`idxShifted = (u8)raw << 1`)
#    and using it as a flat u32[12] word-array index (NOT a struct/2D
#    array - those make MWCC redo the multiply as one step or spill to
#    stack). This exact split is what finally got the table-lookup
#    block byte-exact.
# 3. The final -1/0 sentinel-reset pair: natural C++ always allocates
#    r4=-1 (15 uses) / r0=0 (1 use); retail is the opposite (r0=-1/
#    r4=0). Insensitive to literal-vs-local, declaration order, and
#    usage order (5 real variations tried, zero effect - unlike the
#    RusaRegistry_GetOrInit declaration-order win, this one doesn't generalize).
#    Tried patching JUST this tail via inline `asm{}` (the established
#    hybrid-file technique) - discovered a NEW hybrid-technique limit:
#    an inline asm block anywhere in a function makes MWCC reallocate
#    registers for the WHOLE function, not just locally, so a partial
#    tail-only asm patch corrupts the (already-verified-matching) rest
#    of the function. The hybrid technique only works when the WHOLE
#    risky function is raw asm, not for patching a fragment of an
#    otherwise-real-C++ function.
# Left as raw asm (net zero landed) - but this is now a fully solved,
# precisely-characterized case; a future session with a fresh idea for
# the register-swap (or a way to isolate inline-asm register pressure)
# could likely close the last 18 bytes.
.text
.balign 4
.global fn_801A3944

fn_801A3944:
    li 4, 0x0
    stw 4, 0x28c(3)
    stw 4, 0x290(3)
    stw 4, 0x294(3)
    stw 4, 0x280(3)
    stw 4, 0x284(3)
    stw 4, 0x288(3)
    lwz 0, 0x90(3)
    stw 4, 0x234(3)
    clrlslwi 5, 0, 24, 1
    stw 4, 0x238(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 24
    cmplwi 0, 0xff
    .4byte 0x41820024 # beq .L_801A39A0
    lis 4, lbl_804A2C80@ha
    slwi 5, 5, 2
    addi 4, 4, lbl_804A2C80@l
    lwzx 0, 4, 5
    add 4, 4, 5
    stw 0, 0x234(3)
    lwz 0, 0x4(4)
    stw 0, 0x238(3)
L_801A39A0:
    lwz 0, 0x90(3)
    extrwi. 0, 0, 4, 20
    .4byte 0x40820010 # bne .L_801A39B8
    li 0, 0x0
    stw 0, 0x23c(3)
    .4byte 0x4800000C # b .L_801A39C0
L_801A39B8:
    li 0, 0x1
    stw 0, 0x23c(3)
L_801A39C0:
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 16
    stw 0, 0x240(3)
    lwz 0, 0x240(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_801A39E0
    li 0, 0x3
    stw 0, 0x240(3)
L_801A39E0:
    li 0, -0x1
    li 4, 0x0
    stw 0, 0x244(3)
    stw 0, 0x248(3)
    stw 0, 0x24c(3)
    stw 0, 0x250(3)
    stw 0, 0x254(3)
    stw 0, 0x258(3)
    stw 0, 0x25c(3)
    stw 0, 0x260(3)
    stw 0, 0x264(3)
    stw 0, 0x268(3)
    stw 0, 0x26c(3)
    stw 0, 0x270(3)
    stw 0, 0x274(3)
    stw 0, 0x278(3)
    stw 0, 0x27c(3)
    stw 4, 0x230(3)
    blr

