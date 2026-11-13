"""generated from devices/mace_timer/registers.toml by defs-gen - do not edit, change the source
O2 MACE free-running counter, three compare registers and audio and video time stamps"""

UNIT = 'mace_timer'
REGISTERS = {'counter': {'offset': 0, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'cmp0': {'offset': 8, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'cmp1': {'offset': 16, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'cmp2': {'offset': 24, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'audio_pair': {'offset': 32, 'access': 'rw', 'width': 64, 'count': 3, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'video_pair': {'offset': 56, 'access': 'rw', 'width': 64, 'count': 3, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}}
WORDS = {}
FIELDS = {'counter': {'count': (31, 0)}, 'cmp0': {'value': (31, 0)}, 'cmp1': {'value': (31, 0)}, 'cmp2': {'value': (31, 0)}, 'audio_pair': {'ust': (63, 32), 'msc': (31, 0)}, 'video_pair': {'ust': (63, 32), 'frame_count': (31, 1), 'field_id': (0, 0)}}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {'BLOCK_BASE': {'value': 523501568, 'count': 1, 'stride': 1}, 'CMP0_ALIAS': {'value': 523567104, 'count': 1, 'stride': 1}, 'CMP1_ALIAS': {'value': 523632640, 'count': 1, 'stride': 1}, 'CMP2_ALIAS': {'value': 523698176, 'count': 1, 'stride': 1}, 'TIMER_SNAP_IN1_OFF': {'value': 56, 'count': 1, 'stride': 1}, 'TIMER_SNAP_IN2_OFF': {'value': 64, 'count': 1, 'stride': 1}, 'TIMER_SNAP_OUT_OFF': {'value': 72, 'count': 1, 'stride': 1}}
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
