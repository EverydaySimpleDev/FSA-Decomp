import re
from pathlib import Path

FSA_MAP = Path(r"D:\Archipelago\Dev\Four-Swords-Adventures-Modding\Helpful Files\Zelda-FSA-Modding-main\Reverse engineering\Map\framework.dol.map")
CBR_SYMBOLS = Path(r"D:\Archipelago\Dev\Chibi-Robo-Randomizer\Decomp\cbr_decomp\decomp_dtk_main\config\GGTE01\symbols.txt")
CBR_SPLITS = Path(r"D:\Archipelago\Dev\Chibi-Robo-Randomizer\Decomp\cbr_decomp\decomp_dtk_main\config\GGTE01\splits.txt")

# --- parse FSA ghidra map: "  80000100 000001 80000100  1 name \tModule"
fsa_syms = {}  # name -> (addr, size, module)
map_line_re = re.compile(r'^\s*([0-9a-fA-F]{8})\s+([0-9a-fA-F]{6})\s+[0-9a-fA-F]{8}\s+\S+\s+(.+?)\s*\t(\S+)\s*$')
with open(FSA_MAP, encoding='utf-8', errors='replace') as f:
    for line in f:
        m = map_line_re.match(line.rstrip('\n'))
        if not m:
            continue
        addr, size, name, module = m.groups()
        fsa_syms[name] = (int(addr, 16), int(size, 16), module)

print(f"FSA map symbols parsed: {len(fsa_syms)}")

# --- parse cbr symbols.txt: "name = section:0xADDR; // type:function size:0xNN scope:global ..."
cbr_syms = {}  # name -> dict(section, addr, size, scope, raw_attrs)
sym_line_re = re.compile(r'^([^\s=]+)\s*=\s*([\.\w]+):0x([0-9a-fA-F]+);\s*//\s*(.*)$')
with open(CBR_SYMBOLS, encoding='utf-8', errors='replace') as f:
    for line in f:
        m = sym_line_re.match(line.strip())
        if not m:
            continue
        name, section, addr, attrs = m.groups()
        size_m = re.search(r'size:0x([0-9a-fA-F]+)', attrs)
        type_m = re.search(r'type:(\w+)', attrs)
        cbr_syms[name] = {
            'section': section,
            'addr': int(addr, 16),
            'size': int(size_m.group(1), 16) if size_m else 0,
            'type': type_m.group(1) if type_m else None,
        }

print(f"cbr_decomp symbols parsed: {len(cbr_syms)}")

# --- parse cbr splits.txt to map address ranges -> file, per section
# format:
# path/to/file.cpp:
#     .text  start:0xAAAA end:0xBBBB
splits = []  # list of (file, section, start, end)
cur_file = None
file_header_re = re.compile(r'^(\S+):\s*(?:comment:\S+)?\s*$')
section_re = re.compile(r'^(\S+)\s+start:0x([0-9a-fA-F]+)\s+end:0x([0-9a-fA-F]+)')
with open(CBR_SPLITS, encoding='utf-8', errors='replace') as f:
    for raw in f:
        line = raw.rstrip('\n')
        if not line.strip():
            continue
        if not line.startswith('\t') and not line.startswith('    ') and line.strip().endswith(':'):
            cur_file = line.strip().rstrip(':')
            continue
        sm = section_re.match(line.strip())
        if sm and cur_file:
            section, start, end = sm.groups()
            splits.append((cur_file, section, int(start, 16), int(end, 16)))

print(f"cbr splits parsed: {len(splits)} section ranges across files")

def find_file_for(section, addr):
    for file, sec, start, end in splits:
        if sec == section and start <= addr < end:
            return file
    return None

# --- intersect by name
matches = []
for name, (fsa_addr, fsa_size, module) in fsa_syms.items():
    if name in cbr_syms:
        c = cbr_syms[name]
        file = find_file_for(c['section'], c['addr'])
        matches.append({
            'name': name,
            'fsa_addr': fsa_addr,
            'fsa_size': fsa_size,
            'fsa_module': module,
            'cbr_addr': c['addr'],
            'cbr_size': c['size'],
            'cbr_type': c['type'],
            'cbr_file': file,
        })

print(f"\n=== Name-matches between FSA map and cbr_decomp symbols: {len(matches)} ===")

with_file = [m for m in matches if m['cbr_file']]
size_match = [m for m in with_file if m['fsa_size'] == m['cbr_size']]
print(f"  with known cbr source file: {len(with_file)}")
print(f"  of those, size matches exactly (fsa_size == cbr_size): {len(size_match)}")

# unique files touched
files = sorted(set(m['cbr_file'] for m in with_file))
print(f"  unique cbr source files touched: {len(files)}")

out = Path(r"C:\Users\Tinte\AppData\Local\Temp\claude\d--Archipelago-Dev-Four-Swords-Adventures-Modding-Decomp\9d9e0621-3567-4fd9-81b3-9193cc524e64\scratchpad\crossref_results.txt")
with open(out, 'w', encoding='utf-8') as f:
    f.write(f"Total name matches: {len(matches)}\n")
    f.write(f"With known cbr source file: {len(with_file)}\n")
    f.write(f"Exact size match: {len(size_match)}\n")
    f.write(f"Unique files: {len(files)}\n\n")
    f.write("=== SIZE-MATCHING (highest confidence, likely byte-identical SDK code) ===\n")
    for m in sorted(size_match, key=lambda x: x['fsa_addr']):
        f.write(f"{m['name']:<40} fsa=0x{m['fsa_addr']:08X} size=0x{m['fsa_size']:X}  <- {m['cbr_file']}\n")
    f.write("\n=== NAME-MATCH BUT SIZE DIFFERS (needs review) ===\n")
    for m in sorted(with_file, key=lambda x: x['fsa_addr']):
        if m not in size_match:
            f.write(f"{m['name']:<40} fsa=0x{m['fsa_addr']:08X} fsa_size=0x{m['fsa_size']:X} cbr_size=0x{m['cbr_size']:X}  <- {m['cbr_file']}\n")
    f.write("\n=== UNIQUE REUSABLE SOURCE FILES ===\n")
    for fpath in files:
        f.write(fpath + "\n")

print(f"\nWrote detailed report to {out}")
