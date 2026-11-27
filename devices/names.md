# Where the register names come from

Every register, word, field, enum value and constant name in the `crime`, `mte`, `re` and `gbe` units, graded by where the name itself comes from. The MACE, VICE and AD1843 units follow in [their own section](#mace-vice-and-ad1843-units).

- **public: specification**: the name is, apart from case and punctuation, a name printed in the published CRIME 1.5 or GBE specification (a register table row, a memory-map row or a bit-table heading).
- **public: driver**: the name is, apart from case, prefix and punctuation, a register macro in a public driver: NetBSD `crimereg.h`, `crmfbreg.h` and `crmfb.c`, or Linux `ip32/crime.h` and `gbefb.c`.
- **ours**: we coined or adapted the name: abbreviated a specification name, joined a group and a member with an underscore, or named something no public document names. Every constant is ours.
- **[hdr]**: a name from the register layout headers IRIX 6.5.5 shipped. James ruled on 2026-11-23 that these names, and only the names, may enter public QEMU. No name in these units is one spelled as the header spells it. Four of ours were prompted by one and respelled: `tex_stflags` (the header's word is `stShift`), `tex_format.u_shift` and `v_shift` (`uShift`, `vShift`) and `depth_func.tag_clear` (`enTagClear`). They count as ours.
- **[binary]**: a name from a shipped binary's symbol table. None of these names comes from one.
- **[source]**: a name that rests only on the public IRIX source tree. None, so nothing was renamed. No entry in these four units cites the source tree, and each non-public name is a lowercase coinage that follows a public name's spelling or describes the field. This rests on the citations in the unit sources; the source tree was not searched name by name.

## How the toml records it

`name_source` and `name_cite` exist on a unit, a register and a word. They do not exist on a field or an enum value, and a constant takes its unit's. So each unit says `name_source = "ours"`. A register or word says `"public"` with a citation only when its own name is public and every field and enum value in it also turns up, by token search, in the same documents. A register whose own name is public but that holds a field we coined stays `ours`, and the table below shows how many of its members matched. `defs-names unchecked` lists nothing for these four units.

The field and enum check searches the specification text and driver sources for the token. It also hits common words ("enable", "mode") that the text uses for other reasons, so for fields it is weak evidence and the public counts are an upper bound.

## Generated outputs

`generated/c-regfields/<unit>.h` (QEMU form: `REG32` and `FIELD` lines, names carry the unit prefix, the includer supplies the macros) and `generated/rust-regs/<unit>.rs` (one `regs!` call) for `crime`, `mte`, `re` and `gbe`. Offsets are from each block's own base, which the unit does not record: `crime` from physical 0x14000000, `re` and `mte` from 0x15000000 and `gbe` from 0x16000000.

## Counts

Names per class, registers, words, fields, enum values and constants together:

| Unit | public: specification | public: driver | ours | total |
|---|---|---|---|---|
| crime | 25 | 18 | 63 | 106 |
| mte | 24 | 0 | 27 | 51 |
| re | 85 | 3 | 284 | 372 |
| gbe | 77 | 51 | 117 | 245 |
| all | 211 | 72 | 491 | 774 |

[hdr], [binary] and [source]: none. 105 of the "ours" names are constants.

## Registers and words

"Own name" is where the register or word name itself is printed. "toml" is the `name_source` it carries. "Members" counts fields and enum values found in the same documents, out of all it has.

| Unit | Name | Kind | Own name | toml | Members |
|---|---|---|---|---|---|
| crime | `id` | register | public driver | public | 2 of 2 |
| crime | `control` | register | public driver | ours | 3 of 6 |
| crime | `intstat` | register | public driver | public | 0 of 0 |
| crime | `intmask` | register | public driver | public | 1 of 1 |
| crime | `softint` | register | public driver | public | 0 of 0 |
| crime | `hardint` | register | public driver | public | 0 of 0 |
| crime | `watchdog` | register | public driver | public | 2 of 2 |
| crime | `timer` | register | specification | public | 1 of 1 |
| crime | `cpu_error_addr` | register | public driver | ours | 0 of 1 |
| crime | `cpu_error_stat` | register | public driver | ours | 2 of 4 |
| crime | `cpu_error_ena` | register | public driver | public | 0 of 0 |
| crime | `vice_error_addr` | register | public driver | public | 0 of 0 |
| crime | `mem_control` | register | public driver | ours | 1 of 2 |
| crime | `mem_bank_control` | register | none | ours | 0 of 2 |
| crime | `mem_error_stat` | register | public driver | ours | 7 of 15 |
| crime | `mem_error_addr` | register | public driver | public | 0 of 0 |
| crime | `mem_error_ecc_syn` | register | public driver | public | 0 of 0 |
| crime | `mem_error_ecc_chk` | register | public driver | public | 0 of 0 |
| crime | `mem_error_ecc_repl` | register | public driver | public | 1 of 1 |
| crime | `cpu_error_stat_15` | register | none | ours | 0 of 0 |
| crime | `INTBIT` | word | none | ours | 5 of 17 |
| mte | `mode` | register | specification | ours | 12 of 24 |
| mte | `bytemask` | register | specification | public | 0 of 0 |
| mte | `stipplemask` | register | specification | public | 0 of 0 |
| mte | `fg` | register | none | ours | 0 of 0 |
| mte | `src0` | register | specification | public | 0 of 0 |
| mte | `src1` | register | specification | public | 0 of 0 |
| mte | `dst0` | register | specification | public | 0 of 0 |
| mte | `dst1` | register | specification | public | 0 of 0 |
| mte | `src_ystep` | register | specification | public | 0 of 0 |
| mte | `dst_ystep` | register | specification | public | 0 of 0 |
| mte | `null` | register | specification | public | 0 of 0 |
| mte | `flush` | register | specification | public | 0 of 0 |
| mte | `ADDR` | word | specification | ours | 0 of 2 |
| re | `ib_data` | register | none | ours | 0 of 0 |
| re | `ib_addr` | register | none | ours | 0 of 0 |
| re | `ib_ctl` | register | none | ours | 0 of 4 |
| re | `ib_reset` | register | none | ours | 0 of 0 |
| re | `tlb_fb_a` | register | specification | public | 0 of 0 |
| re | `tlb_fb_b` | register | specification | public | 0 of 0 |
| re | `tlb_fb_c` | register | specification | public | 0 of 0 |
| re | `tlb_tex` | register | specification | public | 0 of 0 |
| re | `tlb_cid` | register | specification | public | 0 of 0 |
| re | `tlb_lin_a` | register | none | ours | 0 of 0 |
| re | `tlb_lin_b` | register | none | ours | 0 of 0 |
| re | `bufmode_src` | register | specification | public | 0 of 0 |
| re | `bufmode_dst` | register | specification | public | 0 of 0 |
| re | `clipmode` | register | specification | ours | 1 of 4 |
| re | `drawmode` | register | specification | ours | 8 of 21 |
| re | `scrmask` | register | specification | public | 4 of 4 |
| re | `scissor` | register | specification | public | 4 of 4 |
| re | `winoffset_src` | register | specification | public | 2 of 2 |
| re | `winoffset_dst` | register | specification | public | 2 of 2 |
| re | `primitive` | register | specification | ours | 2 of 12 |
| re | `vertex_x` | register | specification | public | 0 of 0 |
| re | `vertex_gl` | register | none | ours | 0 of 0 |
| re | `xfer_src_addr` | register | none | ours | 0 of 0 |
| re | `xfer_src_stride` | register | none | ours | 0 of 0 |
| re | `xfer_src_xstep` | register | none | ours | 0 of 0 |
| re | `xfer_src_ystep` | register | none | ours | 0 of 0 |
| re | `xfer_dst_addr` | register | none | ours | 0 of 0 |
| re | `xfer_dst_stride` | register | none | ours | 0 of 0 |
| re | `stipple_mode` | register | specification | public | 0 of 4 |
| re | `stipple_pattern` | register | specification | public | 0 of 0 |
| re | `fg_color` | register | none | ours | 0 of 0 |
| re | `bg_color` | register | none | ours | 0 of 0 |
| re | `shade_start` | register | none | ours | 0 of 0 |
| re | `shade_drdx` | register | specification | public | 0 of 0 |
| re | `shade_dgdx` | register | specification | public | 0 of 0 |
| re | `shade_drdy` | register | specification | public | 0 of 0 |
| re | `shade_dgdy` | register | specification | public | 0 of 0 |
| re | `shade_dbdx` | register | specification | public | 0 of 0 |
| re | `shade_dadx` | register | specification | public | 0 of 0 |
| re | `shade_dbdy` | register | specification | public | 0 of 0 |
| re | `shade_dady` | register | specification | public | 0 of 0 |
| re | `tex_mode` | register | none | ours | 2 of 39 |
| re | `tex_format` | register | none | ours | 0 of 6 |
| re | `tex_sqs` | register | none | ours | 0 of 0 |
| re | `tex_tqs` | register | none | ours | 0 of 0 |
| re | `tex_qs` | register | none | ours | 0 of 0 |
| re | `tex_stflags` | register | none | ours | 0 of 2 |
| re | `tex_dsqdx` | register | none | ours | 0 of 0 |
| re | `tex_dsqdy` | register | none | ours | 0 of 0 |
| re | `tex_dtqdx` | register | none | ours | 0 of 0 |
| re | `tex_dtqdy` | register | none | ours | 0 of 0 |
| re | `tex_dqdx` | register | none | ours | 0 of 0 |
| re | `tex_dqdy` | register | none | ours | 0 of 0 |
| re | `tex_border` | register | none | ours | 0 of 0 |
| re | `tex_envcolor` | register | none | ours | 0 of 0 |
| re | `fog_color` | register | specification | public | 0 of 1 |
| re | `fog_fs` | register | specification | public | 0 of 0 |
| re | `fog_dfdx` | register | specification | public | 0 of 0 |
| re | `fog_dfdy` | register | specification | public | 0 of 0 |
| re | `aa_line` | register | none | ours | 1 of 2 |
| re | `aa_cov` | register | none | ours | 1 of 2 |
| re | `alphatest` | register | specification | public | 2 of 10 |
| re | `blend_color` | register | none | ours | 0 of 0 |
| re | `blend_func` | register | specification | public | 5 of 33 |
| re | `logicop` | register | specification | public | 1 of 17 |
| re | `colormask` | register | specification | public | 0 of 0 |
| re | `depth_func` | register | specification | ours | 1 of 11 |
| re | `depth_zs` | register | specification | public | 0 of 0 |
| re | `depth_dzdx` | register | specification | public | 0 of 0 |
| re | `depth_dzdy` | register | specification | public | 0 of 0 |
| re | `stencil_mode` | register | specification | ours | 2 of 20 |
| re | `stencil_mask` | register | specification | public | 0 of 1 |
| re | `pixpipe_null` | register | specification | public | 0 of 0 |
| re | `pixpipe_flush` | register | specification | public | 0 of 0 |
| re | `status` | register | specification | ours | 2 of 8 |
| re | `set_startptr` | register | none | ours | 0 of 0 |
| re | `BUFMODE` | word | none | ours | 4 of 22 |
| re | `IBADDR_HI` | word | none | ours | 1 of 12 |
| re | `LINENT` | word | none | ours | 1 of 2 |
| re | `PIXEL_A1_RGB5` | word | none | ours | 0 of 4 |
| re | `PIXEL_RG3_B2` | word | none | ours | 0 of 3 |
| re | `PIXEL_RGBA8` | word | none | ours | 0 of 4 |
| re | `SCRMASK_HI` | word | none | ours | 0 of 2 |
| re | `SCRMASK_LO` | word | none | ours | 0 of 2 |
| re | `TLBTILE` | word | none | ours | 1 of 2 |
| gbe | `ctrlstat` | register | public driver | ours | 6 of 28 |
| gbe | `dotclock` | register | public driver | ours | 5 of 7 |
| gbe | `i2c` | register | specification | public | 2 of 2 |
| gbe | `sysclk` | register | public driver | ours | 2 of 4 |
| gbe | `i2cfp` | register | public driver | public | 2 of 2 |
| gbe | `device_id` | register | public driver | public | 0 of 0 |
| gbe | `vt_xy` | register | public driver | ours | 2 of 3 |
| gbe | `vt_xymax` | register | public driver | ours | 0 of 2 |
| gbe | `vt_vsync` | register | public driver | public | 2 of 2 |
| gbe | `vt_hsync` | register | public driver | public | 2 of 2 |
| gbe | `vt_vblank` | register | public driver | public | 2 of 2 |
| gbe | `vt_hblank` | register | public driver | public | 2 of 2 |
| gbe | `vt_flags` | register | public driver | ours | 0 of 7 |
| gbe | `vt_f2rf_lock` | register | none | ours | 0 of 2 |
| gbe | `vt_intr01` | register | public driver | ours | 1 of 2 |
| gbe | `vt_intr23` | register | public driver | ours | 0 of 2 |
| gbe | `fp_hdrv` | register | specification | public | 2 of 2 |
| gbe | `fp_vdrv` | register | specification | public | 2 of 2 |
| gbe | `fp_de` | register | specification | public | 2 of 2 |
| gbe | `vt_hpixen` | register | public driver | public | 2 of 2 |
| gbe | `vt_vpixen` | register | public driver | public | 2 of 2 |
| gbe | `vt_hcmap` | register | public driver | public | 2 of 2 |
| gbe | `vt_vcmap` | register | public driver | public | 2 of 2 |
| gbe | `did_start_xy` | register | none | ours | 0 of 2 |
| gbe | `crs_start_xy` | register | none | ours | 0 of 2 |
| gbe | `vc_start_xy` | register | none | ours | 0 of 2 |
| gbe | `ovr_width_tile` | register | public driver | ours | 0 of 3 |
| gbe | `ovr_inhwctrl` | register | none | ours | 1 of 1 |
| gbe | `ovr_control` | register | public driver | ours | 1 of 2 |
| gbe | `frm_size_tile` | register | none | ours | 1 of 7 |
| gbe | `frm_size_pixel` | register | none | ours | 1 of 1 |
| gbe | `frm_inhwctrl` | register | none | ours | 1 of 1 |
| gbe | `frm_control` | register | public driver | ours | 1 of 2 |
| gbe | `did_inhwctrl` | register | none | ours | 2 of 2 |
| gbe | `did_control` | register | public driver | public | 2 of 2 |
| gbe | `wid` | register | public driver | ours | 14 of 16 |
| gbe | `cmap` | register | public driver | public | 3 of 3 |
| gbe | `cmap_fifo` | register | public driver | public | 1 of 1 |
| gbe | `gmap` | register | public driver | public | 0 of 0 |
| gbe | `crs_pos` | register | specification | public | 2 of 2 |
| gbe | `crs_ctl` | register | specification | public | 2 of 2 |
| gbe | `crs_cm` | register | specification | public | 0 of 0 |
| gbe | `crs_gly` | register | specification | public | 0 of 0 |
| gbe | `vc_0` | register | specification | public | 2 of 2 |
| gbe | `vc_1` | register | specification | public | 2 of 2 |
| gbe | `vc_2` | register | specification | ours | 3 of 5 |
| gbe | `vc_3` | register | specification | ours | 2 of 6 |
| gbe | `vc_tiles` | register | none | ours | 0 of 2 |
| gbe | `DID_FRAME` | word | specification | public | 3 of 3 |
| gbe | `DID_LINE` | word | none | ours | 2 of 2 |
| gbe | `TILE_LIST_ENTRY` | word | none | ours | 1 of 1 |

## MACE, VICE and AD1843 units

Audited on 2026-11-27 against the published MACE 2.0 specification, the VICE design specification and the AD1843 data sheet, the public Linux, NetBSD and OpenBSD O2 drivers, and the shipped IRIX 6.5 `sys/mace.h`, `sys/IP32.h` and `sys/crime.h`.

Each unit says `name_source = "ours"`. Its names are descriptive spellings: every word in them turns up in those documents, drivers or headers, apart from number suffixes and units such as `kib8` or `quarter`. A register or word says `"public"` only when its own name is printed as spelled by a public document, driver or shipped header and every field and enum value in it is too. No name comes from a binary's symbol table. Names were not searched against the non-public IRIX source tree: no unit cites it, and the search was not run.

| Unit | Names | public | ours | Excluded or renamed |
|---|---|---|---|---|
| mace_audio | 27 | 0 | 27 | none |
| mace_ethernet | 133 | 0 | 133 | none |
| mace_i2c | 18 | 0 | 18 | none |
| mace_periph | 49 | 0 | 49 | none |
| mace_ps2 | 26 | 0 | 26 | none |
