"""generated from devices/mace_video_in/registers.toml by defs-gen - do not edit, change the source
O2 MACE video input channel registers"""

UNIT = 'mace_video_in'
REGISTERS = {'control': {'offset': 0, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_in', 'reset': 0, 'grade': 'established'}, 'status': {'offset': 8, 'access': 'r', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_in', 'reset': 0, 'grade': 'established'}, 'config': {'offset': 16, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_in', 'reset': 'unknown', 'grade': 'established'}, 'next_desc': {'offset': 24, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_in', 'reset': 'unknown', 'grade': 'established'}, 'fld_offset': {'offset': 32, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_in', 'reset': 'unknown', 'grade': 'established'}, 'line_width': {'offset': 40, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_in', 'reset': 'unknown', 'grade': 'established'}, 'hclip_odd': {'offset': 48, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_in', 'reset': 'unknown', 'grade': 'established'}, 'vclip_odd': {'offset': 56, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_in', 'reset': 'unknown', 'grade': 'established'}, 'alpha_odd': {'offset': 64, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_in', 'reset': 'unknown', 'grade': 'inferred'}, 'hclip_even': {'offset': 72, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_in', 'reset': 'unknown', 'grade': 'established'}, 'vclip_even': {'offset': 80, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_in', 'reset': 'unknown', 'grade': 'established'}, 'alpha_even': {'offset': 88, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_in', 'reset': 'unknown', 'grade': 'inferred'}, 'dma_desc': {'offset': 128, 'access': 'rw', 'width': 64, 'count': 8, 'stride': 8, 'space': 'mace_video_in', 'reset': 'unknown', 'grade': 'established'}}
WORDS = {}
FIELDS = {'control': {'int_gpib': (9, 9), 'int_crime_error': (8, 8), 'int_fifo_overflow': (7, 7), 'int_v_overflow': (6, 6), 'int_h_overflow': (5, 5), 'int_buffer': (4, 4), 'int_lost_sync': (3, 3), 'int_dma_done': (2, 2), 'int_vsync': (1, 1), 'dma_enable': (0, 0)}, 'status': {'sync_present': (10, 10), 'gpib': (9, 9), 'crime_error': (8, 8), 'fifo_overflow': (7, 7), 'v_overflow': (6, 6), 'h_overflow': (5, 5), 'buffer': (4, 4), 'lost_sync': (3, 3), 'dma_done': (2, 2), 'vsync': (1, 1), 'dma_active': (0, 0)}, 'config': {'interleaved': (16, 16), 'mem_mode': (15, 14), 'dither': (13, 13), 'pixel_format': (12, 10), 'sof_count': (9, 6), 'd1_ecc': (5, 5), 'd1_precision': (4, 4), 'source': (3, 2), 'd1_reset': (1, 1), 'channel_reset': (0, 0)}, 'next_desc': {'table_address': (31, 6), 'valid': (2, 2), 'field_select': (1, 0)}, 'fld_offset': {'byte_offset': (15, 3)}, 'line_width': {'bytes': (11, 3)}, 'hclip_odd': {'filter_mode': (40, 39), 'scale_on': (38, 38), 'scale_ratio': (37, 30), 'filt_count': (29, 20), 'end': (19, 10), 'start': (9, 0)}, 'vclip_odd': {'scale_on': (38, 38), 'scale_ratio': (37, 30), 'end': (29, 20), 'blank_end': (19, 10), 'start': (9, 0)}, 'alpha_odd': {}, 'hclip_even': {'filter_mode': (40, 39), 'scale_on': (38, 38), 'scale_ratio': (37, 30), 'filt_count': (29, 20), 'end': (19, 10), 'start': (9, 0)}, 'vclip_even': {'scale_on': (38, 38), 'scale_ratio': (37, 30), 'end': (29, 20), 'blank_end': (19, 10), 'start': (9, 0)}, 'alpha_even': {}, 'dma_desc': {}}
ENUMS = {'config.mem_mode': {0: 'linear', 1: 'tiled', 2: 'mipmap_512x128', 3: 'mipmap_512x256'}, 'config.pixel_format': {0: 'rgba32', 1: 'rgba5551', 2: 'yuv422_8', 3: 'yuv422_10', 4: 'abgr32', 5: 'yuva4224'}, 'config.source': {0: 'primary', 1: 'secondary', 2: 'loopback_e', 3: 'loopback_f'}, 'next_desc.field_select': {0: 'either', 2: 'odd', 3: 'even'}, 'hclip_odd.filter_mode': {0: 'none', 1: 'pal_nonsquare', 2: 'ntsc_nonsquare', 3: 'half'}, 'hclip_even.filter_mode': {0: 'none', 1: 'pal_nonsquare', 2: 'ntsc_nonsquare', 3: 'half'}}
FIELD_ENUM = {'config.mem_mode': 'config.mem_mode', 'config.pixel_format': 'config.pixel_format', 'config.source': 'config.source', 'next_desc.field_select': 'next_desc.field_select', 'hclip_odd.filter_mode': 'hclip_odd.filter_mode', 'hclip_even.filter_mode': 'hclip_even.filter_mode'}
CONSTANTS = {}
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
