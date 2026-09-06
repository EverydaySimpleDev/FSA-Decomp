import re
from pathlib import Path

CBR_SPLITS = Path(r"D:\Archipelago\Dev\Chibi-Robo-Randomizer\Decomp\cbr_decomp\decomp_dtk_main\config\GGTE01\splits.txt")
FSA_SYMBOLS = Path(r"D:\Archipelago\Dev\Four-Swords-Adventures-Modding\Decomp\fsa_decomp\config\G4SE01\symbols.txt")

sym_line_re = re.compile(r'^([^\s=]+)\s*=\s*([\.\w]+):0x([0-9a-fA-F]+);\s*//\s*(.*)$')

# Load FSA named (non-generic) symbols: name -> (section, addr, size)
fsa_named = {}
with open(FSA_SYMBOLS, encoding='utf-8', errors='replace') as f:
    for line in f:
        m = sym_line_re.match(line.strip())
        if not m:
            continue
        name, section, addr, attrs = m.groups()
        if name.startswith(('fn_', '@', 'gap_', 'auto_')):
            continue
        size_m = re.search(r'size:0x([0-9a-fA-F]+)', attrs)
        if not size_m:
            continue
        fsa_named[name] = (section, int(addr, 16), int(size_m.group(1), 16))

# Load cbr splits.txt as an ORDERED list of (file, [(section,start,end), ...])
files_order = []
cur_file = None
cur_entries = None
section_re = re.compile(r'^(\S+)\s+start:0x([0-9a-fA-F]+)\s+end:0x([0-9a-fA-F]+)')
with open(CBR_SPLITS, encoding='utf-8', errors='replace') as f:
    for raw in f:
        line = raw.rstrip('\n')
        if not line.strip():
            continue
        if not line.startswith('\t') and not line.startswith('    ') and line.strip().endswith(':'):
            if cur_file:
                files_order.append((cur_file, cur_entries))
            cur_file = line.strip().rstrip(':')
            cur_entries = []
            continue
        sm = section_re.match(line.strip())
        if sm and cur_entries is not None:
            section, start, end = sm.groups()
            cur_entries.append((section, int(start, 16), int(end, 16)))
    if cur_file:
        files_order.append((cur_file, cur_entries))

# Build cbr symbols name->addr for computing per-file symbol lists (to double check)
CBR_SYMBOLS = Path(r"D:\Archipelago\Dev\Chibi-Robo-Randomizer\Decomp\cbr_decomp\decomp_dtk_main\config\GGTE01\symbols.txt")
cbr_syms_by_addr = {}
with open(CBR_SYMBOLS, encoding='utf-8', errors='replace') as f:
    for line in f:
        m = sym_line_re.match(line.strip())
        if not m:
            continue
        name, section, addr, attrs = m.groups()
        size_m = re.search(r'size:0x([0-9a-fA-F]+)', attrs)
        cbr_syms_by_addr[(section, int(addr, 16))] = (name, int(size_m.group(1), 16) if size_m else 0)

# Find anchor: first file/section start that matches a known-good FSA named symbol
# We seed with PPCMfmsr = .text:0x8003F610, which corresponds to cbr's "Dolphin/os/PPCMtHID0.c" .text start
ANCHOR_NAME = "PPCMfmsr"
anchor_fsa = fsa_named[ANCHOR_NAME]
anchor_section, anchor_fsa_addr, _ = anchor_fsa

# find the cbr file containing PPCMfmsr and its section start (its cbr address)
anchor_cbr_addr = None
anchor_file_idx = None
for idx, (file, entries) in enumerate(files_order):
    for section, start, end in entries:
        if section != anchor_section:
            continue
        # does this entry contain PPCMfmsr's cbr address? we need cbr's own addr for PPCMfmsr
        for (sec2, addr2), (name2, size2) in cbr_syms_by_addr.items():
            if name2 == ANCHOR_NAME and sec2 == section and start <= addr2 < end:
                anchor_cbr_addr = start  # use the FILE's start, not the symbol's own addr necessarily
                anchor_file_idx = idx
                break
        if anchor_file_idx is not None:
            break
    if anchor_file_idx is not None:
        break

print("anchor file index:", anchor_file_idx, "file:", files_order[anchor_file_idx][0] if anchor_file_idx is not None else None)
print("anchor cbr addr (file start):", hex(anchor_cbr_addr) if anchor_cbr_addr else None)
print("anchor fsa addr (PPCMfmsr):", hex(anchor_fsa_addr))

# cbr file start offset vs FSA: delta = fsa_file_start - cbr_file_start
# PPCMfmsr sits at some offset within its file; we need FSA addr of the FILE START, not the symbol.
# Since PPCMfmsr is likely the first symbol in the file, and file entry start == cbr file addr start,
# compute offset of PPCMfmsr within its own file:
cbr_file_start = anchor_cbr_addr
# find PPCMfmsr's own cbr addr
ppc_cbr_addr = None
for (sec2, addr2), (name2, size2) in cbr_syms_by_addr.items():
    if name2 == ANCHOR_NAME:
        ppc_cbr_addr = addr2
        break
offset_in_file = ppc_cbr_addr - cbr_file_start
fsa_file_start = anchor_fsa_addr - offset_in_file
delta = fsa_file_start - cbr_file_start
print("cbr file start:", hex(cbr_file_start), "ppc cbr addr:", hex(ppc_cbr_addr), "offset_in_file:", hex(offset_in_file))
print("computed fsa_file_start:", hex(fsa_file_start), "delta (fsa - cbr):", hex(delta))

# Now walk forward through files_order starting at anchor_file_idx, applying delta,
# and verify against fsa_named at file-boundary crossing points (whenever a named symbol exists there).
print("\n--- Walking forward, verifying against FSA ground truth where possible ---")
results = []
running_ok = True
for idx in range(anchor_file_idx, min(anchor_file_idx + 60, len(files_order))):
    file, entries = files_order[idx]
    file_ok = True
    file_lines = []
    for section, start, end in entries:
        fsa_start = start + delta
        fsa_end = end + delta
        file_lines.append((section, fsa_start, fsa_end))
        # check: any FSA named symbol whose cbr counterpart is in this file at this section+addr?
        for (sec2, addr2), (name2, size2) in cbr_syms_by_addr.items():
            if sec2 != section or not (start <= addr2 < end):
                continue
            if name2 in fsa_named:
                fsec, faddr, fsize = fsa_named[name2]
                expected_fsa_addr = addr2 + delta
                if fsec != section or faddr != expected_fsa_addr or fsize != size2:
                    file_ok = False
    results.append((file, file_lines, file_ok))
    if not file_ok:
        running_ok = False

for file, lines, ok in results:
    status = "OK" if ok else "MISMATCH"
    print(f"[{status}] {file}")
    for section, s, e in lines:
        print(f"    {section} start:0x{s:08X} end:0x{e:08X}")

# Stop point: first mismatch
first_bad = next((i for i, r in enumerate(results) if not r[2]), len(results))
print(f"\nFirst {first_bad} files verified contiguous & consistent with FSA ground truth.")
print("Safe batch (all OK, in order):")
for file, lines, ok in results[:first_bad]:
    print(" ", file)
