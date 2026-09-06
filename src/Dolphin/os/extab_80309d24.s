# Fused dtk split unit (0x80309D24-0x8030A2E4, 0x8030A308-0x8030A364,
# 0x8030A388-0x8030A43C) - dtk cannot cherry-pick individually. All
# operate on a `table` argument (r3, an array of per-slot animation-
# controller records) and a `slot` index (r4), universally gated by a
# -999 (0xFFFFFC19) sentinel meaning "no controller" that makes every
# accessor return a safe default. `table`=lbl_8053AD30 and `slot`=the
# result of fn_8030AAF4(playerObj->0x11ec) in every CONFIRMED caller
# (fn_80246B10/fn_8024712C/fn_80247330, extab_80246b10.s/8024712c.s/
# 80247330.s) - i.e. this is the player's animation-controller record
# array. AnimTable_IsField0xdcLessThan3/AnimTable_IsField0xe0LessThan3/AnimTable_IsSlotFlagged are split out to
# Game/stub_8030a2e4.cpp (simple sentinel-gated accessors, no scaled
# addressing - unlike this bundle's other members, no evidence they
# ever multiply `slot`, so table+slot is left as raw byte-pointer
# arithmetic rather than assumed array indexing).
#
# fn_80309D24/fn_80309D48/fn_80309D6C(table, slot, mask) -> bool: test
# `mask` against table[slot]->0x4 / ->0x34 / ->0x24 respectively.
#
# NOTE: attempted real-C++ promotion of fn_80309D24/D48/D6C THREE times.
# Attempts 1-2 (manual char*+idx*4 arithmetic, then reinterpreting as a
# flat u32* array with offset indices table[slot+1]/[slot+13]/[slot+9])
# both failed on the confirmed indexed-addressing-vs-base+immediate
# mismatch. After discovering the array[idx]-syntax fix (see
# project_fsa_phase4_kickoff.md, eighteenth batch - confirmed working
# for Player_GetCapabilityFlagByIndex and Table_SetSelfIndexedByte86/C90), retried with real array syntax
# (attempt 2 above) - this FIXED the load/store addressing (matched!)
# but exposed a SEPARATE, smaller mismatch: the final `and r3,rX,rY`
# instruction has its two operands (the loaded table value and the
# `mask` argument) in the OPPOSITE order from retail (`and r3,r0,r5`
# vs build's `and r3,r5,r0`) - a pure register-allocation/operand-order
# artifact for a commutative AND, unaffected by swapping the C++
# expression's own operand order (`mask & table[...]` vs
# `table[...] & mask` produced identical wrong output - attempt 3).
# Reverted to raw asm after 2 fix attempts on this specific residual
# issue (3 total promotion attempts). This is a DIFFERENT, narrower
# problem than the addressing-mode issue - worth revisiting if a
# technique for controlling AND-operand register order is found.
#
# fn_80309D90(table, slot) -> float: computes a 2D (f1,f2) blend vector
# from up to 4 bit-tested contributions each (bits 28-31 of
# table[slot]->0x4, selecting among float constants lbl_80541670/674/
# 678/67C), then normalizes it via the project's standard fast-rsqrt
# idiom if its squared magnitude exceeds lbl_80541670. CONFIRMED to be
# exactly the combination of fn_80309F20's f1 computation and
# fn_80309FCC's f2 computation below (same bit tests, same constants).
#
# fn_80309F20(table, slot) -> float: the "f1" (X?) half of
# fn_80309D90's blend alone, no normalize. Confirmed caller:
# fn_8024712C.
#
# fn_80309FCC(table, slot) -> float: the "f2" (Z?) half of
# fn_80309D90's blend alone (different bit-test combination than
# fn_80309F20), no normalize. Confirmed caller: fn_80247330.
#
# fn_8030A078(table) -> void: NOT slot-indexed - loops all 4 slots
# in-place. For each slot, computes rising/falling-edge detection
# between table[i]->0x4 and table[i]->0x14 (current vs previous frame's
# flag bits) into ->0x24/->0xa4, then for each of 4 individual bits
# (31/30/29/28) manages a paired countdown timer (->0x34's
# corresponding bit + ->0x44/->0x54/->0x64/->0x74): on a rising edge,
# restarts the timer (20 or 10 frames depending on which edge array);
# on an active/falling state, decrements it and clears the bit at 0.
# A per-frame "edge-triggered debounce timer" updater for the whole
# animation-controller array.
#
# fn_8030A258(table, slot) -> byte: a layered validity+lookup chain -
# slot sentinel, table[slot]->0xc4 must equal EXACTLY 4, ->0xd4 must be
# 0, ->0xd8 must be nonzero; then checks a SEPARATE global table
# (lbl_804DB798, stride 0xE0) at [slot]->0xdc - if that's also 0,
# finally returns a GLOBAL per-player byte array lbl_8053ACE4[slot].
#
# fn_8030A308(table, slot) -> bool: the SAME layered chain as
# fn_8030A258 (sentinel, ->0xc4==4, ->0xd4==0) but returns whether
# ->0xd8 IS zero (inverted requirement from fn_8030A258's third check).
#
# fn_8030A3B0(table, slot) -> bool: the FULL layered chain (sentinel,
# ->0xc4==4, ->0xd4==0, ->0xd8==1 exactly) - if that whole chain
# succeeds, returns true immediately; otherwise falls back to the SAME
# lbl_8053AD38[slot] check as AnimTable_IsSlotFlagged. A composite "OR" of the two.
.text
.balign 4
.global fn_80309D24
.global fn_80309D48
.global fn_80309D6C
.global fn_80309D90
.global fn_80309F20
.global fn_80309FCC
.global fn_8030A078
.global fn_8030A258

fn_80309D24:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_80309D34
    li 3, 0x0
    blr
L_80309D34:
    slwi 0, 4, 2
    add 3, 3, 0
    lwz 0, 0x4(3)
    and 3, 0, 5
    blr

fn_80309D48:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_80309D58
    li 3, 0x0
    blr
L_80309D58:
    slwi 0, 4, 2
    add 3, 3, 0
    lwz 0, 0x34(3)
    and 3, 0, 5
    blr

fn_80309D6C:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_80309D7C
    li 3, 0x0
    blr
L_80309D7C:
    slwi 0, 4, 2
    add 3, 3, 0
    lwz 0, 0x24(3)
    and 3, 0, 5
    blr

fn_80309D90:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_80309DA0
    .4byte 0xC022E6D0 # lfs f1, lbl_80541670@sda21(r0)
    .4byte 0x4800009C # b .L_80309E38
L_80309DA0:
    .4byte 0x4082000C # bne .L_80309DAC
    li 0, 0x0
    .4byte 0x48000014 # b .L_80309DBC
L_80309DAC:
    slwi 0, 4, 2
    add 5, 3, 0
    lwz 0, 0x4(5)
    rlwinm 0, 0, 0, 29, 29
L_80309DBC:
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80309DCC
    .4byte 0xC022E6D4 # lfs f1, lbl_80541674@sda21(r0)
    .4byte 0x48000008 # b .L_80309DD0
L_80309DCC:
    .4byte 0xC022E6D0 # lfs f1, lbl_80541670@sda21(r0)
L_80309DD0:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_80309DE0
    li 0, 0x0
    .4byte 0x48000014 # b .L_80309DF0
L_80309DE0:
    slwi 0, 4, 2
    add 5, 3, 0
    lwz 0, 0x4(5)
    rlwinm 0, 0, 0, 28, 28
L_80309DF0:
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80309E00
    .4byte 0xC002E6D8 # lfs f0, lbl_80541678@sda21(r0)
    .4byte 0x48000008 # b .L_80309E04
L_80309E00:
    .4byte 0xC002E6D0 # lfs f0, lbl_80541670@sda21(r0)
L_80309E04:
    cmpwi 4, -0x3e7
    fadds 1, 1, 0
    .4byte 0x4082000C # bne .L_80309E18
    li 0, 0x0
    .4byte 0x48000014 # b .L_80309E28
L_80309E18:
    slwi 0, 4, 2
    add 5, 3, 0
    lwz 0, 0x4(5)
    clrlwi 0, 0, 30
L_80309E28:
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80309E38
    .4byte 0xC002E6DC # lfs f0, lbl_8054167C@sda21(r0)
    fmuls 1, 1, 0
L_80309E38:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_80309E48
    .4byte 0xC042E6D0 # lfs f2, lbl_80541670@sda21(r0)
    .4byte 0x4800009C # b .L_80309EE0
L_80309E48:
    .4byte 0x4082000C # bne .L_80309E54
    li 0, 0x0
    .4byte 0x48000014 # b .L_80309E64
L_80309E54:
    slwi 0, 4, 2
    add 5, 3, 0
    lwz 0, 0x4(5)
    clrlwi 0, 0, 31
L_80309E64:
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80309E74
    .4byte 0xC042E6D4 # lfs f2, lbl_80541674@sda21(r0)
    .4byte 0x48000008 # b .L_80309E78
L_80309E74:
    .4byte 0xC042E6D0 # lfs f2, lbl_80541670@sda21(r0)
L_80309E78:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_80309E88
    li 0, 0x0
    .4byte 0x48000014 # b .L_80309E98
L_80309E88:
    slwi 0, 4, 2
    add 5, 3, 0
    lwz 0, 0x4(5)
    rlwinm 0, 0, 0, 30, 30
L_80309E98:
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80309EA8
    .4byte 0xC002E6D8 # lfs f0, lbl_80541678@sda21(r0)
    .4byte 0x48000008 # b .L_80309EAC
L_80309EA8:
    .4byte 0xC002E6D0 # lfs f0, lbl_80541670@sda21(r0)
L_80309EAC:
    cmpwi 4, -0x3e7
    fadds 2, 2, 0
    .4byte 0x4082000C # bne .L_80309EC0
    li 0, 0x0
    .4byte 0x48000014 # b .L_80309ED0
L_80309EC0:
    slwi 0, 4, 2
    add 3, 3, 0
    lwz 0, 0x4(3)
    rlwinm 0, 0, 0, 28, 29
L_80309ED0:
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80309EE0
    .4byte 0xC002E6DC # lfs f0, lbl_8054167C@sda21(r0)
    fmuls 2, 2, 0
L_80309EE0:
    fmuls 1, 1, 1
    .4byte 0xC002E6D0 # lfs f0, lbl_80541670@sda21(r0)
    fmadds 1, 2, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    beqlr
    frsqrte 4, 1
    .4byte 0xC062E6E0 # lfs f3, lbl_80541680@sda21(r0)
    .4byte 0xC002E6E4 # lfs f0, lbl_80541684@sda21(r0)
    frsp 4, 4
    fmuls 2, 4, 4
    fmuls 3, 3, 4
    fnmsubs 0, 1, 2, 0
    fmuls 0, 3, 0
    fmuls 1, 1, 0
    blr

fn_80309F20:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_80309F30
    .4byte 0xC022E6D0 # lfs f1, lbl_80541670@sda21(r0)
    blr
L_80309F30:
    .4byte 0x4082000C # bne .L_80309F3C
    li 0, 0x0
    .4byte 0x48000014 # b .L_80309F4C
L_80309F3C:
    slwi 0, 4, 2
    add 5, 3, 0
    lwz 0, 0x4(5)
    rlwinm 0, 0, 0, 29, 29
L_80309F4C:
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80309F5C
    .4byte 0xC022E6D4 # lfs f1, lbl_80541674@sda21(r0)
    .4byte 0x48000008 # b .L_80309F60
L_80309F5C:
    .4byte 0xC022E6D0 # lfs f1, lbl_80541670@sda21(r0)
L_80309F60:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_80309F70
    li 0, 0x0
    .4byte 0x48000014 # b .L_80309F80
L_80309F70:
    slwi 0, 4, 2
    add 5, 3, 0
    lwz 0, 0x4(5)
    rlwinm 0, 0, 0, 28, 28
L_80309F80:
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80309F90
    .4byte 0xC002E6D8 # lfs f0, lbl_80541678@sda21(r0)
    .4byte 0x48000008 # b .L_80309F94
L_80309F90:
    .4byte 0xC002E6D0 # lfs f0, lbl_80541670@sda21(r0)
L_80309F94:
    cmpwi 4, -0x3e7
    fadds 1, 1, 0
    .4byte 0x4082000C # bne .L_80309FA8
    li 0, 0x0
    .4byte 0x48000014 # b .L_80309FB8
L_80309FA8:
    slwi 0, 4, 2
    add 3, 3, 0
    lwz 0, 0x4(3)
    clrlwi 0, 0, 30
L_80309FB8:
    cmplwi 0, 0x0
    beqlr
    .4byte 0xC002E6DC # lfs f0, lbl_8054167C@sda21(r0)
    fmuls 1, 1, 0
    blr

fn_80309FCC:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_80309FDC
    .4byte 0xC022E6D0 # lfs f1, lbl_80541670@sda21(r0)
    blr
L_80309FDC:
    .4byte 0x4082000C # bne .L_80309FE8
    li 0, 0x0
    .4byte 0x48000014 # b .L_80309FF8
L_80309FE8:
    slwi 0, 4, 2
    add 5, 3, 0
    lwz 0, 0x4(5)
    clrlwi 0, 0, 31
L_80309FF8:
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8030A008
    .4byte 0xC022E6D4 # lfs f1, lbl_80541674@sda21(r0)
    .4byte 0x48000008 # b .L_8030A00C
L_8030A008:
    .4byte 0xC022E6D0 # lfs f1, lbl_80541670@sda21(r0)
L_8030A00C:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_8030A01C
    li 0, 0x0
    .4byte 0x48000014 # b .L_8030A02C
L_8030A01C:
    slwi 0, 4, 2
    add 5, 3, 0
    lwz 0, 0x4(5)
    rlwinm 0, 0, 0, 30, 30
L_8030A02C:
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8030A03C
    .4byte 0xC002E6D8 # lfs f0, lbl_80541678@sda21(r0)
    .4byte 0x48000008 # b .L_8030A040
L_8030A03C:
    .4byte 0xC002E6D0 # lfs f0, lbl_80541670@sda21(r0)
L_8030A040:
    cmpwi 4, -0x3e7
    fadds 1, 1, 0
    .4byte 0x4082000C # bne .L_8030A054
    li 0, 0x0
    .4byte 0x48000014 # b .L_8030A064
L_8030A054:
    slwi 0, 4, 2
    add 3, 3, 0
    lwz 0, 0x4(3)
    rlwinm 0, 0, 0, 28, 29
L_8030A064:
    cmplwi 0, 0x0
    beqlr
    .4byte 0xC002E6DC # lfs f0, lbl_8054167C@sda21(r0)
    fmuls 1, 1, 0
    blr

fn_8030A078:
    li 0, 0x4
    mtctr 0
L_8030A080:
    lwz 5, 0x4(3)
    li 4, 0x0
    lwz 0, 0x14(3)
    xor 0, 5, 0
    and 0, 5, 0
    stw 0, 0x24(3)
    lwz 5, 0x14(3)
    lwz 0, 0x4(3)
    xor 0, 0, 5
    and 0, 5, 0
    stw 0, 0xa4(3)
    stw 4, 0x34(3)
    lwz 0, 0x4(3)
    clrlwi. 0, 0, 31
    .4byte 0x41820058 # beq .L_8030A110
    lwz 0, 0x24(3)
    clrlwi. 0, 0, 31
    .4byte 0x4182001C # beq .L_8030A0E0
    lwz 4, 0x34(3)
    li 0, 0x14
    ori 4, 4, 0x1
    stw 4, 0x34(3)
    stw 0, 0x44(3)
    .4byte 0x48000038 # b .L_8030A114
L_8030A0E0:
    lwz 4, 0x44(3)
    subi 0, 4, 0x1
    stw 0, 0x44(3)
    lwz 0, 0x44(3)
    cmpwi 0, 0x0
    .4byte 0x41810020 # bgt .L_8030A114
    lwz 4, 0x34(3)
    li 0, 0xa
    ori 4, 4, 0x1
    stw 4, 0x34(3)
    stw 0, 0x44(3)
    .4byte 0x48000008 # b .L_8030A114
L_8030A110:
    stw 4, 0x44(3)
L_8030A114:
    lwz 0, 0x4(3)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x41820058 # beq .L_8030A174
    lwz 0, 0x24(3)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x4182001C # beq .L_8030A144
    lwz 4, 0x34(3)
    li 0, 0x14
    ori 4, 4, 0x2
    stw 4, 0x34(3)
    stw 0, 0x54(3)
    .4byte 0x4800003C # b .L_8030A17C
L_8030A144:
    lwz 4, 0x54(3)
    subi 0, 4, 0x1
    stw 0, 0x54(3)
    lwz 0, 0x54(3)
    cmpwi 0, 0x0
    .4byte 0x41810024 # bgt .L_8030A17C
    lwz 4, 0x34(3)
    li 0, 0xa
    ori 4, 4, 0x2
    stw 4, 0x34(3)
    stw 0, 0x54(3)
    .4byte 0x4800000C # b .L_8030A17C
L_8030A174:
    li 0, 0x0
    stw 0, 0x54(3)
L_8030A17C:
    lwz 0, 0x4(3)
    rlwinm. 0, 0, 0, 29, 29
    .4byte 0x41820058 # beq .L_8030A1DC
    lwz 0, 0x24(3)
    rlwinm. 0, 0, 0, 29, 29
    .4byte 0x4182001C # beq .L_8030A1AC
    lwz 4, 0x34(3)
    li 0, 0x14
    ori 4, 4, 0x4
    stw 4, 0x34(3)
    stw 0, 0x64(3)
    .4byte 0x4800003C # b .L_8030A1E4
L_8030A1AC:
    lwz 4, 0x64(3)
    subi 0, 4, 0x1
    stw 0, 0x64(3)
    lwz 0, 0x64(3)
    cmpwi 0, 0x0
    .4byte 0x41810024 # bgt .L_8030A1E4
    lwz 4, 0x34(3)
    li 0, 0xa
    ori 4, 4, 0x4
    stw 4, 0x34(3)
    stw 0, 0x64(3)
    .4byte 0x4800000C # b .L_8030A1E4
L_8030A1DC:
    li 0, 0x0
    stw 0, 0x64(3)
L_8030A1E4:
    lwz 0, 0x4(3)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820058 # beq .L_8030A244
    lwz 0, 0x24(3)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x4182001C # beq .L_8030A214
    lwz 4, 0x34(3)
    li 0, 0x14
    ori 4, 4, 0x8
    stw 4, 0x34(3)
    stw 0, 0x74(3)
    .4byte 0x4800003C # b .L_8030A24C
L_8030A214:
    lwz 4, 0x74(3)
    subi 0, 4, 0x1
    stw 0, 0x74(3)
    lwz 0, 0x74(3)
    cmpwi 0, 0x0
    .4byte 0x41810024 # bgt .L_8030A24C
    lwz 4, 0x34(3)
    li 0, 0xa
    ori 4, 4, 0x8
    stw 4, 0x34(3)
    stw 0, 0x74(3)
    .4byte 0x4800000C # b .L_8030A24C
L_8030A244:
    li 0, 0x0
    stw 0, 0x74(3)
L_8030A24C:
    addi 3, 3, 0x4
    .4byte 0x4200FE30 # bdnz .L_8030A080
    blr

fn_8030A258:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_8030A268
    li 3, 0x0
    blr
L_8030A268:
    slwi 0, 4, 2
    add 5, 3, 0
    lwz 5, 0xc4(5)
    subis 0, 5, 0x4
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8030A288
    li 3, 0x0
    blr
L_8030A288:
    add 3, 3, 4
    lbz 0, 0xd4(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8030A2A0
    li 3, 0x0
    blr
L_8030A2A0:
    lbz 0, 0xd8(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8030A2B4
    li 3, 0x0
    blr
L_8030A2B4:
    mulli 0, 4, 0xe0
    lis 3, lbl_804DB798@ha
    addi 3, 3, lbl_804DB798@l
    add 3, 3, 0
    lbz 0, 0xdc(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8030A2D8
    li 3, 0x0
    blr
L_8030A2D8:
    .4byte 0x386D9124 # li r3, lbl_8053ACE4@sda21
    lbzx 3, 3, 4
    blr

