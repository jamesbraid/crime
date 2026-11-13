"""generated from devices/mace_ps2/registers.toml by defs-gen - do not edit, change the source
O2 MACE PS/2 keyboard and mouse ports"""

UNIT = 'mace_ps2'
REGISTERS = {'transmit': {'offset': 0, 'access': 'w', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'receive': {'offset': 8, 'access': 'r', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'control': {'offset': 16, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 16, 'grade': 'established'}, 'status': {'offset': 24, 'access': 'r', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}}
WORDS = {}
FIELDS = {'transmit': {'byte': (7, 0)}, 'receive': {'status_alias': (15, 8), 'byte': (7, 0)}, 'control': {'internal_reset': (5, 5), 'clock_permit': (4, 4), 'receive_interrupt_enable': (3, 3), 'transmit_interrupt_enable': (2, 2), 'transmit_enable': (1, 1), 'inhibit_after_transmit': (0, 0)}, 'status': {'framing_error': (7, 7), 'parity_error': (6, 6), 'reception_in_progress': (5, 5), 'receive_full': (4, 4), 'transmit_empty': (3, 3), 'transmit_in_progress': (2, 2), 'clock_permitted': (1, 1), 'clock_level': (0, 0)}}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {'BLOCK_BASE': {'value': 523370496, 'count': 1, 'stride': 1}, 'DEVICE_POLL_INTERVAL_US': {'value': 100, 'count': 1, 'stride': 1}, 'FRAME_BITS': {'value': 11, 'count': 1, 'stride': 1}, 'KEYBOARD_BASE': {'value': 0, 'count': 1, 'stride': 1}, 'MOUSE_BASE': {'value': 32, 'count': 1, 'stride': 1}}
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
