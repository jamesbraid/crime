#!/usr/bin/env bash
# decompile_libglcore.sh
# Runs m2c decompiler on libGLcore.so functions and modules using ctx_libglcore.c in N32 mode.

set -eo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

# A reader-written context file (struct definitions, prototypes) improves output.
CTX="${SCRIPT_DIR}/ctx_libglcore.c"
M2C="python3 ${ROOT_DIR}/m2c/m2c.py -t mipsn32"
[ -f "$CTX" ] && M2C="$M2C --context $CTX"

if [ $# -eq 0 ]; then
    echo "Usage:"
    echo "  $0 <module_name>       (e.g., $0 some_cu)"
    echo "  $0 <category>          (e.g., $0 <category dir under asm/>)"
    echo "  $0 --func <func_name>  (e.g., $0 --func some_function)"
    echo "  $0 all                 (decompile every module)"
    exit 1
fi

decompile_file() {
    local asm_file="$1"
    local rel_path="${asm_file#${SCRIPT_DIR}/asm/}"
    local out_c="${SCRIPT_DIR}/decomp/${rel_path%.s}.c"
    mkdir -p "$(dirname "$out_c")"
    echo "[*] Decompiling $asm_file -> $out_c ..."
    if $M2C "$asm_file" > "$out_c" 2>&1; then
        echo "[+] Done: $out_c ($(wc -l < "$out_c") lines)"
    else
        echo "[-] Failed: $asm_file"
    fi
}

if [ "$1" == "--func" ]; then
    func_name="$2"
    echo "[*] Searching for function $func_name across assembly files..."
    asm_file=$(grep -l "\.ent $func_name" "${SCRIPT_DIR}/asm"/*/*.s | head -n 1)
    if [ -z "$asm_file" ]; then
        echo "[-] Function $func_name not found in ${SCRIPT_DIR}/asm/*/*.s"
        exit 1
    fi
    echo "[*] Found in $asm_file. Decompiling..."
    $M2C -f "$func_name" "$asm_file"
    exit 0
fi

if [ "$1" == "all" ]; then
    echo "[*] Decompiling every module..."
    for f in "${SCRIPT_DIR}"/asm/*/*.s; do
        decompile_file "$f"
    done
    exit 0
fi

if [ -d "${SCRIPT_DIR}/asm/$1" ]; then
    for f in "${SCRIPT_DIR}/asm/$1"/*.s; do
        decompile_file "$f"
    done
    exit 0
fi

# Search by module basename
target="$1"
target="${target%.c}"
target="${target%.s}"
matches=$(find "${SCRIPT_DIR}/asm" -name "${target}.s")
if [ -z "$matches" ]; then
    echo "[-] Module ${target}.s not found under ${SCRIPT_DIR}/asm/"
    exit 1
fi

for f in $matches; do
    decompile_file "$f"
done
