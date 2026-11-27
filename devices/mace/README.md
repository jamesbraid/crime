# mace

The MACE I/O ASIC register maps are in the chips repository, one unit per block under `devices/mace_*` there
(`mace_pci`, `mace_video_in`, `mace_video_out`, `mace_ethernet`, `mace_audio`, `mace_isa`, `mace_serial_dma`,
`mace_ps2`, `mace_i2c`, `mace_timer`, `mace_uart` and `mace_isa_ext`), and so is the AD1843 codec unit
(`devices/ad1843`). This repository no longer holds MACE or AD1843 registers.

The notes that went with the units (audio, Ethernet, PS/2, serial DMA, video and the board-level MACE base page) moved
with them. CRIME, MTE, RE, GBE and VICE stay here; VICE is under [devices/vice](../vice/README.md).
