# fn_800FA6B0: a NEW mechanism for this container class - a jumptable-
# driven byte-sequence/event-script player, structurally distinct
# from all the physics/homing methods landed so far (pure integer
# state machine, no floating point at all, no `-mgekko` needed).
#
# `this->0x27c` selects the current "opcode" (0-8, dispatched through
# `jumptable_8049C6CC`, a 9-entry function-pointer table); when it
# changes from the cached `this->0x280`, the per-opcode sub-state
# (`this->0x279` step counter, `this->0x27a` "step is still running"
# flag) resets. Each opcode handler looks up a per-step byte value
# from its OWN small lookup table (`lbl_8049C61C`, `lbl_8049C628`,
# `lbl_80539E80/88/90/94/98/A0` - six distinct byte tables, one or a
# pair per opcode) keyed by the step counter: a sentinel `0xFF` means
# "this opcode has no more steps," transitioning `this->0x278` to a
# literal follow-up opcode id and clearing the running flag; otherwise
# it compares the looked-up value against the step counter to decide
# whether to advance to the next step. Two of the opcode handlers
# additionally play a sound effect (`0x426`/`0x427`) via the CONFIRMED
# `fn_801F0E34` when a step completes. This reads like a compact
# "container event script" (e.g. a shake/rattle/open animation timed
# by table-driven step counts) - structurally similar in SPIRIT to
# GNON's per-opcode hold-duration script interpreter (see
# project_fsa_gnon_actor_progress.md) but a completely separate,
# simpler table-driven implementation, not the same mechanism. Not yet
# cross-identified against the 195-entry dispatch table.
#
# SCREENED (session 6), not attempted: the dispatch itself
# (this->0x27c switch on 0-8) computed-jumps through a PRE-EXISTING,
# already-landed data table (jumptable_8049C6CC in data_80498528.s,
# unchanged/untouched by this promotion). A real C++ `switch` would
# synthesize its OWN new jump table at a compiler-chosen location -
# not reproduce/reuse this fixed existing symbol - so it would not be
# byte-exact even if every case body matched. Reproducing this exactly
# would need an inline `asm{}` block for JUST the dispatch instructions
# (lis/slwi/addi/lwzx/mtctr/bctr referencing jumptable_8049C6CC
# directly, letting the fixed table's already-correct target addresses
# keep working) followed by real C++ for each case body placed
# immediately after in the exact right physical order - a technique not
# yet tried anywhere in this project. Each individual case body (traced
# fully - see below) looks straightforward on its own (byte/table
# lookups, step counters, 2 conditional fn_801F0E34 sound triggers);
# the ONLY blocker is the dispatch mechanism itself. Worth a fresh
# attempt in a future session once/if the asm-block-dispatch technique
# is proven on a smaller case first.
#
# Full per-case trace (0-8), all read this->0x279 as "step" and
# this->0x27a as "running" flag, this->0x278 as "current sub-op":
#   case 0: val=lbl_8049C61C[step]; if val==0xff: subop=3,running=0;
#     else: val2=lbl_8049C628[step]; if running==val2: running=0,
#     step+=1. Then if running==0 and (step==0 or step==6):
#     fn_801F0E34(this,0x426,0).
#   case 1: same shape, tables lbl_80539E80/88, reset value 0 (not 3),
#     single condition step==0 (not ==6 too), sound 0x427.
#   case 2: same shape, tables lbl_80539E90/94, reset value 6, no
#     trailing running/step/sound check at all.
#   case 3..7: trivial - just set this->0x278 = 0/7/8/9/0xa respectively.
#   case 8: same shape as case 0/1, tables lbl_80539E98/A0, reset
#     value 3, no trailing check.
#   tail (all cases): this->0x27a += 1; return.
.section extab, "a"
.balign 4
.global etb_800057C0
etb_800057C0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800057C0, 8

.section extabindex, "a"
.balign 4
.global eti_80011AD0
eti_80011AD0:
    .4byte fn_800FA6B0
    .4byte 0x00000294
    .4byte etb_800057C0
.size eti_80011AD0, 12

.text
.balign 4
.global fn_800FA6B0

fn_800FA6B0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x280(3)
    lwz 0, 0x27c(31)
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_800FA6E4
    stw 0, 0x280(31)
    li 0, 0x0
    stb 0, 0x27a(31)
    stb 0, 0x279(31)
L_800FA6E4:
    lwz 0, 0x27c(31)
    cmplwi 0, 0x8
    .4byte 0x41810238 # bgt .L_800FA924
    lis 3, jumptable_8049C6CC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049C6CC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lis 3, lbl_8049C61C@ha
    lbz 0, 0x279(31)
    addi 3, 3, lbl_8049C61C@l
    lbzx 0, 3, 0
    stb 0, 0x278(31)
    lbz 0, 0x278(31)
    cmplwi 0, 0xff
    .4byte 0x40820018 # bne .L_800FA73C
    li 3, 0x3
    li 0, 0x0
    stb 3, 0x278(31)
    stb 0, 0x27a(31)
    .4byte 0x48000034 # b .L_800FA76C
L_800FA73C:
    lis 3, lbl_8049C628@ha
    lbz 0, 0x279(31)
    addi 3, 3, lbl_8049C628@l
    lbz 4, 0x27a(31)
    lbzx 0, 3, 0
    cmplw 4, 0
    .4byte 0x40820018 # bne .L_800FA76C
    li 0, 0x0
    stb 0, 0x27a(31)
    lbz 3, 0x279(31)
    addi 0, 3, 0x1
    stb 0, 0x279(31)
L_800FA76C:
    lbz 0, 0x27a(31)
    cmplwi 0, 0x0
    .4byte 0x408201B0 # bne .L_800FA924
    lbz 0, 0x279(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_800FA78C
    cmplwi 0, 0x6
    .4byte 0x4082019C # bne .L_800FA924
L_800FA78C:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x26
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000184 # b .L_800FA924
    lbz 0, 0x279(31)
    .4byte 0x386D82C0 # li r3, lbl_80539E80@sda21
    lbzx 0, 3, 0
    stb 0, 0x278(31)
    lbz 0, 0x278(31)
    cmplwi 0, 0xff
    .4byte 0x40820014 # bne .L_800FA7D0
    li 0, 0x0
    stb 0, 0x278(31)
    stb 0, 0x27a(31)
    .4byte 0x48000030 # b .L_800FA7FC
L_800FA7D0:
    lbz 0, 0x279(31)
    .4byte 0x386D82C8 # li r3, lbl_80539E88@sda21
    lbz 4, 0x27a(31)
    lbzx 0, 3, 0
    cmplw 4, 0
    .4byte 0x40820018 # bne .L_800FA7FC
    li 0, 0x0
    stb 0, 0x27a(31)
    lbz 3, 0x279(31)
    addi 0, 3, 0x1
    stb 0, 0x279(31)
L_800FA7FC:
    lbz 0, 0x27a(31)
    cmplwi 0, 0x0
    .4byte 0x40820120 # bne .L_800FA924
    lbz 0, 0x279(31)
    cmplwi 0, 0x0
    .4byte 0x40820114 # bne .L_800FA924
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x27
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000FC # b .L_800FA924
    lbz 0, 0x279(31)
    .4byte 0x386D82D0 # li r3, lbl_80539E90@sda21
    lbzx 0, 3, 0
    stb 0, 0x278(31)
    lbz 0, 0x278(31)
    cmplwi 0, 0xff
    .4byte 0x40820018 # bne .L_800FA85C
    li 3, 0x6
    li 0, 0x0
    stb 3, 0x278(31)
    stb 0, 0x27a(31)
    .4byte 0x480000CC # b .L_800FA924
L_800FA85C:
    lbz 0, 0x279(31)
    .4byte 0x386D82D4 # li r3, lbl_80539E94@sda21
    lbz 4, 0x27a(31)
    lbzx 0, 3, 0
    cmplw 4, 0
    .4byte 0x408200B4 # bne .L_800FA924
    li 0, 0x0
    stb 0, 0x27a(31)
    lbz 3, 0x279(31)
    addi 0, 3, 0x1
    stb 0, 0x279(31)
    .4byte 0x4800009C # b .L_800FA924
    li 0, 0x0
    stb 0, 0x278(31)
    .4byte 0x48000090 # b .L_800FA924
    li 0, 0x7
    stb 0, 0x278(31)
    .4byte 0x48000084 # b .L_800FA924
    li 0, 0x8
    stb 0, 0x278(31)
    .4byte 0x48000078 # b .L_800FA924
    li 0, 0x9
    stb 0, 0x278(31)
    .4byte 0x4800006C # b .L_800FA924
    li 0, 0xa
    stb 0, 0x278(31)
    .4byte 0x48000060 # b .L_800FA924
    lbz 0, 0x279(31)
    .4byte 0x386D82D8 # li r3, lbl_80539E98@sda21
    lbzx 0, 3, 0
    stb 0, 0x278(31)
    lbz 0, 0x278(31)
    cmplwi 0, 0xff
    .4byte 0x40820018 # bne .L_800FA8F8
    li 3, 0x3
    li 0, 0x0
    stb 3, 0x278(31)
    stb 0, 0x27a(31)
    .4byte 0x48000030 # b .L_800FA924
L_800FA8F8:
    lbz 0, 0x279(31)
    .4byte 0x386D82E0 # li r3, lbl_80539EA0@sda21
    lbz 4, 0x27a(31)
    lbzx 0, 3, 0
    cmplw 4, 0
    .4byte 0x40820018 # bne .L_800FA924
    li 0, 0x0
    stb 0, 0x27a(31)
    lbz 3, 0x279(31)
    addi 0, 3, 0x1
    stb 0, 0x279(31)
L_800FA924:
    lbz 3, 0x27a(31)
    addi 0, 3, 0x1
    stb 0, 0x27a(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

