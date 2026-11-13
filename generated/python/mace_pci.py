"""generated from devices/mace_pci/registers.toml by defs-gen - do not edit, change the source
O2 MACE PCI host bridge control registers"""

UNIT = 'mace_pci'
REGISTERS = {'pci_error_addr': {'offset': 0, 'access': 'r', 'width': 32, 'count': 1, 'stride': 4, 'space': None, 'reset': 0, 'grade': 'established'}, 'pci_error_flags': {'offset': 4, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'pci_control': {'offset': 8, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'pci_rev': {'offset': 12, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'pci_cfg_addr': {'offset': 3320, 'access': 'w', 'width': 32, 'count': 1, 'stride': 4, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'pci_cfg_data': {'offset': 3324, 'access': 'rw', 'width': 32, 'count': 1, 'stride': 4, 'space': None, 'reset': 'unknown', 'grade': 'established'}}
WORDS = {}
FIELDS = {'pci_error_addr': {}, 'pci_error_flags': {'master_abort': (31, 31), 'target_abort': (30, 30), 'data_parity': (29, 29), 'retry': (28, 28), 'system_error': (26, 26), 'parity': (24, 24), 'read_buffer_overrun': (23, 23), 'master_abort_addr': (19, 19)}, 'pci_control': {'error_enable': (31, 24), 'read_buffer_inval': (23, 16), 'park_last_in_use': (15, 15), 'read_multiple': (11, 11), 'parity_response': (10, 10), 'serr_enable': (8, 8), 'irq_enable': (7, 0)}, 'pci_rev': {}, 'pci_cfg_addr': {}, 'pci_cfg_data': {}}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {'BLOCK_BASE': {'value': 520617984, 'count': 1, 'stride': 1}}
TESTS = []


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
