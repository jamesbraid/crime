"""generated from defs/mace_ethernet.toml by defs-gen - do not edit, change the source
O2 MACE Fast-Ethernet block: registers, DMA message formats and diagnostic port"""

UNIT = 'mace_ethernet'
REGISTERS = {'mac_control': {'offset': 0, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 536870913, 'grade': 'established'}, 'interrupt_status': {'offset': 8, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'dma_control': {'offset': 16, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'interrupt_delay': {'offset': 24, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'tx_interrupt_alias': {'offset': 32, 'access': 'w', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'rx_interrupt_alias': {'offset': 40, 'access': 'w', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'tx_ring_pointers': {'offset': 48, 'access': 'rw', 'width': 64, 'count': 2, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'rx_fifo_pointers': {'offset': 64, 'access': 'r', 'width': 64, 'count': 3, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'interrupt_request': {'offset': 88, 'access': 'w', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'phy_data': {'offset': 96, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'phy_address': {'offset': 104, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'phy_read_start': {'offset': 112, 'access': 'w', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'station_address': {'offset': 160, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'secondary_station_address': {'offset': 168, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'multicast_filter': {'offset': 176, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'tx_ring_base': {'offset': 184, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'rx_fifo_data': {'offset': 256, 'access': 'rw', 'width': 64, 'count': 32, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}}
WORDS = {'RX_STATUS_VECTOR': {'width': 64, 'grade': 'established'}, 'TX_COMMAND': {'width': 64, 'grade': 'established'}, 'TX_CONCAT_POINTER': {'width': 64, 'grade': 'established'}, 'TX_STATUS_VECTOR': {'width': 64, 'grade': 'established'}}
FIELDS = {'mac_control': {'revision': (31, 29), 'ipg_r2': (28, 22), 'ipg_r1': (21, 15), 'ipg_t': (14, 8), 'link_failure_enable': (7, 7), 'dest_filter_mode': (6, 5), 'm10t_sia_select': (4, 4), 'speed_100': (3, 3), 'loopback_internal': (2, 2), 'full_duplex': (1, 1), 'core_reset': (0, 0)}, 'interrupt_status': {'multicast_hash_output': (30, 30), 'rx_sequence': (29, 25), 'tx_read_pointer': (24, 16), 'rx_cluster_read_pointer': (12, 8), 'rx_dma_fifo_overflow': (7, 7), 'rx_cluster_fifo_underflow': (6, 6), 'rx_threshold': (5, 5), 'tx_abort': (4, 4), 'tx_memory_error': (3, 3), 'tx_link_failure': (2, 2), 'tx_user_request': (1, 1), 'tx_ring_empty': (0, 0)}, 'dma_control': {'rx_dma_enable': (15, 15), 'rx_start_offset': (14, 12), 'rx_gather_enable': (11, 11), 'rx_runt_enable': (10, 10), 'rx_interrupt_enable': (9, 9), 'rx_interrupt_threshold': (8, 4), 'tx_ring_size': (3, 2), 'tx_dma_enable': (1, 1), 'tx_interrupt_enable': (0, 0)}, 'interrupt_delay': {'count': (5, 0)}, 'tx_interrupt_alias': {'tx_interrupt_enable': (0, 0)}, 'rx_interrupt_alias': {'rx_interrupt_enable': (9, 9), 'rx_interrupt_threshold': (8, 4)}, 'tx_ring_pointers': {'read_pointer': (24, 16), 'write_pointer': (8, 0)}, 'rx_fifo_pointers': {'write_generation': (20, 20), 'write_index': (19, 16), 'read_generation': (12, 12), 'read_index': (11, 8), 'count': (4, 0)}, 'interrupt_request': {'write_enable': (31, 16), 'value': (15, 0)}, 'phy_data': {'busy': (16, 16), 'data': (15, 0)}, 'phy_address': {'device_address': (9, 5), 'register_address': (4, 0)}, 'phy_read_start': {'start': (0, 0)}, 'station_address': {'address_byte_5': (47, 40), 'address_byte_4': (39, 32), 'address_byte_3': (31, 24), 'address_byte_2': (23, 16), 'address_byte_1': (15, 8), 'address_byte_0': (7, 0)}, 'secondary_station_address': {'address': (47, 0)}, 'multicast_filter': {'mask': (63, 0)}, 'tx_ring_base': {'base': (31, 13)}, 'rx_fifo_data': {'cluster_base': (31, 12), 'zero_low': (11, 0)}, 'RX_STATUS_VECTOR': {'always_one': (63, 63), 'zero_filled': (62, 48), 'partial_checksum': (47, 32), 'sequence': (31, 27), 'physical_address_match': (26, 26), 'multicast_filter_match': (25, 25), 'carrier_event_seen': (24, 24), 'bad_packet': (23, 23), 'long_event_seen': (22, 22), 'invalid_preamble': (21, 21), 'broadcast_packet': (20, 20), 'multicast_packet': (19, 19), 'crc_error': (18, 18), 'dribble_nibble': (17, 17), 'code_violation': (16, 16), 'length': (15, 0)}, 'TX_COMMAND': {'must_be_zero': (63, 28), 'pointer3_valid': (27, 27), 'pointer2_valid': (26, 26), 'pointer1_valid': (25, 25), 'completion_interrupt': (24, 24), 'stop_on_abort': (23, 23), 'inline_start': (22, 16), 'length_minus_one': (15, 0)}, 'TX_CONCAT_POINTER': {'zero_high': (63, 48), 'length_minus_one': (47, 32), 'address': (31, 3), 'zero_low': (2, 0)}, 'TX_STATUS_VECTOR': {'one_filled': (63, 63), 'zero_filled': (62, 29), 'late_collision_drop': (28, 28), 'excessive_deferral': (27, 27), 'excess_collisions': (26, 26), 'underrun': (25, 25), 'excessive_length': (24, 24), 'completed': (23, 23), 'deferred': (22, 22), 'crc_error': (21, 21), 'late_collision': (20, 20), 'collision_retries': (19, 16), 'length': (15, 0)}}
ENUMS = {'dest_filter_mode': {0: 'physical_only', 1: 'physical_broadcast_multicast', 2: 'physical_broadcast_all_multicast', 3: 'any_packet'}, 'tx_ring_size': {0: 'kib8', 1: 'kib16', 2: 'kib32', 3: 'kib64'}}
FIELD_ENUM = {'mac_control.dest_filter_mode': 'dest_filter_mode', 'dma_control.tx_ring_size': 'tx_ring_size'}
CONSTANTS = {'BLOCK_BASE': {'value': 522715136, 'count': 1, 'stride': 1}, 'INTERRUPT_DELAY_TICK_NS': {'value': 30690, 'count': 1, 'stride': 1}, 'INTERRUPT_SLOT': {'value': 3, 'count': 1, 'stride': 1}, 'INTERRUPT_UPDATE_TAG': {'value': 12, 'count': 1, 'stride': 1}, 'RX_BUCKET_BYTES': {'value': 256, 'count': 1, 'stride': 1}, 'RX_CLUSTER_BYTES': {'value': 4096, 'count': 1, 'stride': 1}, 'RX_CLUSTER_FIFO_DEPTH': {'value': 16, 'count': 1, 'stride': 1}, 'TX_ENTRY_BYTES': {'value': 128, 'count': 1, 'stride': 1}}
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
