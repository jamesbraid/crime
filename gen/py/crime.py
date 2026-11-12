"""generated from defs/crime.toml by defs-gen - do not edit, change the source
O2 CRIME memory controller and CPU interface registers"""

UNIT = 'crime'
REGISTERS = {'id': {'offset': 0, 'access': 'r', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'control': {'offset': 8, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'intstat': {'offset': 16, 'access': 'r', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'intmask': {'offset': 24, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'softint': {'offset': 32, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'hardint': {'offset': 40, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'watchdog': {'offset': 48, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'timer': {'offset': 56, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'cpu_error_addr': {'offset': 64, 'access': 'r', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'cpu_error_stat': {'offset': 72, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'cpu_error_ena': {'offset': 80, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'inferred'}, 'vice_error_addr': {'offset': 88, 'access': 'r', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'mem_control': {'offset': 512, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'mem_bank_control': {'offset': 520, 'access': 'rw', 'width': 64, 'count': 8, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'mem_error_stat': {'offset': 592, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'mem_error_addr': {'offset': 600, 'access': 'r', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'mem_error_ecc_syn': {'offset': 608, 'access': 'r', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'mem_error_ecc_chk': {'offset': 616, 'access': 'r', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'mem_error_ecc_repl': {'offset': 624, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'cpu_error_stat_15': {'offset': 16456, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'inferred'}}
WORDS = {'INTBIT': {'width': 32, 'grade': 'established'}}
FIELDS = {'id': {'family': (7, 4), 'rev': (3, 0)}, 'control': {'sysadc_gen_enable': (13, 13), 'sysadc_check_enable': (12, 12), 'cold_reset': (11, 11), 'soft_reset': (10, 10), 'watchdog_enable': (9, 9), 'endian': (8, 8)}, 'intstat': {}, 'intmask': {'enable': (31, 0)}, 'softint': {}, 'hardint': {}, 'watchdog': {'warm_reset_timeout': (20, 20), 'count': (19, 0)}, 'timer': {'count': (31, 0)}, 'cpu_error_addr': {'addr_33_2': (31, 0)}, 'cpu_error_stat': {'addr_39_34': (8, 3), 'illegal_addr': (2, 2), 'vice_write_parity': (1, 1), 'cpu_write_parity': (0, 0)}, 'cpu_error_ena': {}, 'vice_error_addr': {}, 'mem_control': {'use_repl_check': (1, 1), 'ecc_enable': (0, 0)}, 'mem_bank_control': {'sdram_geometry': (8, 8), 'base_match': (4, 0)}, 'mem_error_stat': {'invalid_addr_rmw': (27, 27), 'invalid_addr_write': (26, 26), 'invalid_addr_read': (25, 25), 'ecc_error_rmw': (24, 24), 'ecc_error_read': (23, 23), 'multiple_errors': (22, 22), 'hard_error': (21, 21), 'soft_error': (20, 20), 'cpu_access': (18, 18), 'vice_access': (17, 17), 'gbe_access': (16, 16), 're_access': (15, 15), 're_id': (14, 8), 'mace_access': (7, 7), 'mace_id': (6, 0)}, 'mem_error_addr': {}, 'mem_error_ecc_syn': {}, 'mem_error_ecc_chk': {}, 'mem_error_ecc_repl': {'check': (7, 0)}, 'cpu_error_stat_15': {}, 'INTBIT': {'vice': (31, 31), 'syscorerr': (30, 30), 'soft1': (29, 29), 'soft0': (28, 28), 're_idle': (27, 27), 're_full': (26, 26), 're_empty': (25, 25), 're_idle_edge': (24, 24), 're_full_edge': (23, 23), 're_empty_edge': (22, 22), 'mem_error': (21, 21), 'cpu_error': (20, 20), 'gbe3': (19, 19), 'gbe2': (18, 18), 'gbe1': (17, 17), 'gbe0': (16, 16), 'mace': (15, 0)}}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {'ID_FAMILY_SHIPPED': {'value': 160, 'count': 1, 'stride': 1}, 'ID_LOW_BYTE_DRAFT': {'value': 177, 'count': 1, 'stride': 1}, 'ID_LOW_BYTE_SHIPPED': {'value': 161, 'count': 1, 'stride': 1}, 'IP2_CAUSES': {'value': 2411724856, 'count': 1, 'stride': 1}, 'IP3_CAUSES': {'value': 1048327, 'count': 1, 'stride': 1}, 'IP4_CAUSES': {'value': 268435456, 'count': 1, 'stride': 1}, 'IP5_CAUSES': {'value': 536870976, 'count': 1, 'stride': 1}, 'IP6_CAUSES': {'value': 1076887680, 'count': 1, 'stride': 1}, 'MEM_BANKS': {'value': 8, 'count': 1, 'stride': 1}, 'MEM_BANK_CONTROL_RESET_BASE': {'value': 0, 'count': 1, 'stride': 1}, 'MEM_BANK_CONTROL_RESET_STEP': {'value': 1, 'count': 1, 'stride': 1}, 'PHYS_FULL_MEM_BASE': {'value': 1073741824, 'count': 1, 'stride': 1}, 'PHYS_FULL_MEM_BYTES': {'value': 1073741824, 'count': 1, 'stride': 1}, 'PHYS_HIGH_ALIAS_BASE': {'value': 536870912, 'count': 1, 'stride': 1}, 'PHYS_HIGH_ALIAS_BYTES': {'value': 536870912, 'count': 1, 'stride': 1}, 'PHYS_LOW_ALIAS_BASE': {'value': 0, 'count': 1, 'stride': 1}, 'PHYS_LOW_ALIAS_BYTES': {'value': 268435456, 'count': 1, 'stride': 1}, 'PHYS_NOECC_MEM_BASE': {'value': 2147483648, 'count': 1, 'stride': 1}, 'PHYS_NOECC_MEM_BYTES': {'value': 1073741824, 'count': 1, 'stride': 1}, 'WATCHDOG_COUNT_BITS': {'value': 20, 'count': 1, 'stride': 1}}
TESTS = [('id', 161, {'family': 10, 'rev': 1}), ('control', 8704, {'sysadc_gen_enable': 1, 'sysadc_check_enable': 0, 'watchdog_enable': 1}), ('cpu_error_stat', 4, {'illegal_addr': 1, 'cpu_write_parity': 0}), ('INTBIT', 65536, {'gbe0': 1, 'gbe1': 0, 'mace': 0}), ('INTBIT', 67108864, {'re_full': 1, 're_empty': 0})]


def decode(name, value):
    """Field name -> value for a register or word."""
    return {f: (value >> lo) & ((1 << (hi - lo + 1)) - 1) for f, (hi, lo) in FIELDS[name].items()}


def encode(name, **fields):
    v = 0
    for f, x in fields.items():
        hi, lo = FIELDS[name][f]
        if x >> (hi - lo + 1):
            raise ValueError('%s.%s: %d does not fit' % (name, f, x))
        v |= x << lo
    return v


def describe(name, value):
    """decode, with enum labels where the field has an enum."""
    out = {}
    for f, x in decode(name, value).items():
        e = ENUMS.get(FIELD_ENUM.get('%s.%s' % (name, f)))
        out[f] = e.get(x, x) if e else x
    return out


def selftest():
    for name, value, expect in TESTS:
        got = decode(name, value)
        for f, want in expect.items():
            assert got[f] == want, (name, hex(value), f, got[f], want)
    return len(TESTS)


if __name__ == '__main__':
    print('%s: %d vectors ok' % (UNIT, selftest()))
