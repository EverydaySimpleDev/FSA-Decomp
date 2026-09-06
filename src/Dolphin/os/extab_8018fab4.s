# NOTE: attempted real-C++ promotion twice (32nd Phase 4 batch) - a
# literal 3x-duplicated if-block translation (matching retail's odd
# "2 direct-offset checks + 1 pointer-rebased check" structure exactly)
# got the CONTROL FLOW right but MWCC re-materializes the shared `li
# r4,1`/`li r0,0` constants INSIDE each if-block independently (3x)
# instead of retail's single unconditional materialization at the top
# reused by all 3 blocks - hoisting them into locals declared before
# any branch had no effect (MWCC sinks the materialization back down
# to point-of-use regardless). Same "compiler scheduler/materialization
# choice not reachable from source restructuring" hard category as
# fn_8026FC8C. Left as raw asm.
# DGT2 cluster, part 3. fn_8018FAB4 (112B, no extab - leaf). Walks up to
# 3 adjacent slot pairs (this->0x3c0/0x3c4/0x3c8, stride 8) and, for each
# populated one, sets a bit (->0xf4 |= 1) and writes a back-reference ID
# (->0x24) on the referenced object - an "notify/unlink my dependents"
# helper, likely called from the destructor.
.text
.balign 4
.global fn_8018FAB4

fn_8018FAB4:
    lwz 6, 0x3c0(3)
    li 4, 0x1
    li 0, 0x0
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_8018FADC
    lwz 5, 0xf4(6)
    ori 5, 5, 0x1
    stw 5, 0xf4(6)
    stw 4, 0x24(6)
    stw 0, 0x3c0(3)
L_8018FADC:
    lwz 6, 0x3c4(3)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_8018FAFC
    lwz 5, 0xf4(6)
    ori 5, 5, 0x1
    stw 5, 0xf4(6)
    stw 4, 0x24(6)
    stw 0, 0x3c4(3)
L_8018FAFC:
    addi 3, 3, 0x8
    lwz 6, 0x3c0(3)
    cmplwi 6, 0x0
    beqlr
    lwz 5, 0xf4(6)
    ori 5, 5, 0x1
    stw 5, 0xf4(6)
    stw 4, 0x24(6)
    stw 0, 0x3c0(3)
    blr

