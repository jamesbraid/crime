"""generated from devices/mace_video/registers.toml by defs-gen - do not edit, change the source
O2 MACE video output channel and chip-level configuration"""

UNIT = 'mace_video'
REGISTERS = {'control': {'offset': 0, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_out', 'reset': 0, 'grade': 'established'}, 'status': {'offset': 8, 'access': 'r', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_out', 'reset': 0, 'grade': 'established'}, 'config': {'offset': 16, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_out', 'reset': 'unknown', 'grade': 'established'}, 'next_desc': {'offset': 24, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_out', 'reset': 'unknown', 'grade': 'established'}, 'fld_offset': {'offset': 32, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_out', 'reset': 'unknown', 'grade': 'established'}, 'field_size': {'offset': 40, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_out', 'reset': 'unknown', 'grade': 'established'}, 'hpad_odd': {'offset': 48, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_out', 'reset': 'unknown', 'grade': 'established'}, 'vpad_odd': {'offset': 56, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_out', 'reset': 'unknown', 'grade': 'established'}, 'hpad_even': {'offset': 64, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_out', 'reset': 'unknown', 'grade': 'established'}, 'vpad_even': {'offset': 72, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_out', 'reset': 'unknown', 'grade': 'established'}, 'gen_dly': {'offset': 80, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_out', 'reset': 'unknown', 'grade': 'established'}, 'vhw_cfg': {'offset': 88, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 'mace_video_out', 'reset': 'unknown', 'grade': 'established'}, 'dma_desc': {'offset': 128, 'access': 'rw', 'width': 64, 'count': 8, 'stride': 8, 'space': 'mace_video_out', 'reset': 'unknown', 'grade': 'established'}}
WORDS = {}
FIELDS = {'control': {'int_crime_error': (8, 8), 'int_fifo_underflow': (7, 7), 'int_buffer': (4, 4), 'int_genlock_lost': (3, 3), 'int_dma_done': (2, 2), 'int_vsync': (1, 1), 'dma_enable': (0, 0)}, 'status': {'crime_error': (8, 8), 'fifo_underflow': (7, 7), 'buffer': (4, 4), 'lost_sync': (3, 3), 'dma_done': (2, 2), 'vsync': (1, 1), 'dma_active': (0, 0)}, 'config': {'sof_count_even': (25, 22), 'mem_mode': (21, 21), 'interleaved': (20, 20), 'clamping': (19, 18), 'notch_filter': (17, 17), 'pixel_format': (16, 14), 'sof_count_odd': (13, 10), 'genlock_ecc': (9, 9), 'genlock_precision': (8, 8), 'genlock_source': (7, 6), 'genlock_reset': (5, 5), 'port_f_source': (4, 3), 'port_e_source': (2, 1), 'channel_enable': (0, 0)}, 'next_desc': {'table_address': (31, 6), 'valid': (2, 2), 'bit1': (1, 1), 'field_to_send': (0, 0)}, 'fld_offset': {'byte_offset': (15, 3)}, 'field_size': {'lines': (21, 12), 'bytes': (11, 3)}, 'hpad_odd': {'filter_mode': (41, 40), 'filter_count': (39, 30), 'eav_image': (29, 20), 'eav_eav': (19, 10), 'eav_sav': (9, 0)}, 'vpad_odd': {'image_start': (39, 30), 'field_end': (29, 20), 'trailing_blank_start': (19, 10), 'leading_blank_end': (9, 0)}, 'hpad_even': {'filter_mode': (41, 40), 'filter_count': (39, 30), 'eav_image': (29, 20), 'eav_eav': (19, 10), 'eav_sav': (9, 0)}, 'vpad_even': {'image_start': (39, 30), 'field_end': (29, 20), 'trailing_blank_start': (19, 10), 'leading_blank_end': (9, 0)}, 'gen_dly': {}, 'vhw_cfg': {'revision': (35, 32), 'sof_count_even': (22, 19), 'gpibo': (18, 18), 'sof_count_odd': (17, 14), 'gbe_framelock_ecc': (13, 13), 'gbe_framelock_precision': (12, 12), 'gbe_framelock_source': (11, 10), 'gbe_framelock_reset': (9, 9), 'audio_sync_ecc': (8, 8), 'audio_sync_precision': (7, 7), 'audio_sync_source': (6, 5), 'audio_sync_reset': (4, 4), 'port_cd_select': (3, 3), 'port_cd_reset': (2, 2), 'port_ab_select': (1, 1), 'port_ab_reset': (0, 0)}, 'dma_desc': {}}
ENUMS = {'config.mem_mode': {0: 'linear', 1: 'tiled'}, 'config.clamping': {0: 'none', 1: 'extended', 2: 'legal', 3: 'special_expansion'}, 'config.pixel_format': {0: 'rgba32', 1: 'rgba5551', 2: 'yuv422_8', 3: 'yuv422_10', 4: 'abgr32', 5: 'yuva4224'}, 'config.genlock_source': {0: 'none', 1: 'external', 2: 'port_ab', 3: 'port_cd'}, 'config.port_f_source': {0: 'disabled', 1: 'genlock_passthrough', 2: 'yuv', 3: 'alpha'}, 'config.port_e_source': {0: 'disabled', 1: 'genlock_passthrough', 2: 'yuv', 3: 'alpha'}, 'next_desc.field_to_send': {0: 'odd', 1: 'even'}, 'hpad_odd.filter_mode': {0: 'none', 1: 'pal_11_12', 2: 'ntsc_11_10', 3: 'double_width'}, 'hpad_even.filter_mode': {0: 'none', 1: 'pal_11_12', 2: 'ntsc_11_10', 3: 'double_width'}, 'vhw_cfg.gbe_framelock_source': {0: 'output_ef', 1: 'external', 2: 'port_ab', 3: 'port_cd'}, 'vhw_cfg.audio_sync_source': {0: 'none', 1: 'external', 2: 'port_ab', 3: 'port_cd'}}
FIELD_ENUM = {'config.mem_mode': 'config.mem_mode', 'config.clamping': 'config.clamping', 'config.pixel_format': 'config.pixel_format', 'config.genlock_source': 'config.genlock_source', 'config.port_f_source': 'config.port_f_source', 'config.port_e_source': 'config.port_e_source', 'next_desc.field_to_send': 'next_desc.field_to_send', 'hpad_odd.filter_mode': 'hpad_odd.filter_mode', 'hpad_even.filter_mode': 'hpad_even.filter_mode', 'vhw_cfg.gbe_framelock_source': 'vhw_cfg.gbe_framelock_source', 'vhw_cfg.audio_sync_source': 'vhw_cfg.audio_sync_source'}
CONSTANTS = {'IN2_OFF': {'value': 524288, 'count': 1, 'stride': 1}, 'OUT_OFF': {'value': 1048576, 'count': 1, 'stride': 1}, 'WINDOW_PHYS_ADDR': {'value': 521142272, 'count': 1, 'stride': 1}}
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
