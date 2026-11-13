# crime

Reverse-engineering workspace for the SGI O2's CRIME graphics (the memory
controller and rendering engine) and its GBE display back end.

## Start here

- To use the register facts in a tool or a model of the hardware, read the generated headers and crate
  in [generated/c](generated/c) and [generated/rust](generated/rust). Do not edit them: the source is
  the register maps under [devices/](devices/).
- To understand a unit, read `devices/<unit>/` (for example [devices/re](devices/re) for the rendering
  engine and [devices/gbe](devices/gbe) for the display back end). Each directory has a README on how
  the unit works, its register map, and the generated table of its registers.
- How IRIX drives the hardware is in [software/](software/): the kernel driver, the OpenGL driver,
  the X server and its board module, the diagnostics and the video libraries.
- What is covered, and what is not yet, is in [evidence/coverage.md](evidence/coverage.md). Facts
  that no source settles are in [questions/README.md](questions/README.md).

The layout and working style follow Dominik Behr's
[gr2](https://github.com/techomancer/gr2) and
[gr4](https://github.com/techomancer/gr4). Proprietary IRIX binaries are not
tracked. Copy them from your own IRIX install into the ignored `root/`
directory as [evidence/irix-files.md](evidence/irix-files.md) describes. [AGENTS.md](AGENTS.md) has the project goal, the
binaries and evidence, the toolchain and the working rules;
[evidence/coverage.md](evidence/coverage.md) is the map of what is covered and what is
next.

## Running the tools and reproducing a result

The host needs Podman, git and python3. Everything else runs in a container built from
[retools/tools/Containerfile](retools/tools/Containerfile): MIPS binutils, dwarfdump, pyelftools, capstone, unicorn,
numpy, pycparser and spimdisasm, at pinned versions on a pinned Debian base.

    tools/setup-clone.sh --root /path/to/filled/root   # siblings at their pins, submodules, root/
    retools/tools/re-run python3 retools/tools/inventory.py          # the first run builds the image

`retools/tools/re-run COMMAND` runs `COMMAND` in the image with this repository mounted at `/work`, `root/`
included; with no command it opens a shell. `root/` is your own copy of the IRIX 6.5.30 files listed in
[evidence/irix-files.md](evidence/irix-files.md); they are never committed. Fill it from your install or media; the links the tools expect are committed.

To reproduce a cited result:

- Generated tables under `evidence/inventory/` come from `retools/tools/re-run python3 retools/tools/inventory.py`.
  `git status --short evidence` shows nothing afterwards when your `root/` matches `tools/config/inventory-root.sha256`.
- A claim an entry marks as established by execution is reproduced by the retools script that
  the entry names; its docstring says what it reproduces and how to run it, always as
  `retools/tools/re-run python3 retools/tools/NAME.py ...` (device scripts are under `retools/tools/crime/`).
- The shared tooling (container definitions, wrappers, Ghidra scripts, the inventory, fact sheet and claim checker, and the device extractors) is the `retools/` submodule (sgi-retools); tools are run by their submodule path from this repository's root, as `retools/tools/NAME` (shared) or `retools/tools/crime/NAME` (CRIME), and find this workspace from the current directory. A change to them is made in retools and the pin here moves with a commit. `tools/config/` holds this workspace's configuration and data, and `tools/setup-clone.sh` is the stub that fetches the submodule. The optional Ghidra image is built from `retools/tools/Containerfile.ghidra` by
  `retools/tools/re-run --ghidra COMMAND`, and `retools/tools/re-run --ghidra-export OBJECT` writes decompiled C and
  function-similarity output as JSON (see `tools/ghidra/README.md`); nothing else needs it. `retools/tools/README-analysis.md`
  describes the `.mdebug` importer and the kernel table extractors.

## Hardware definitions

Register, word, field and constant facts for CRIME, the rendering engine, the memory transfer engine, GBE, MACE and VICE are TOML sources, one `devices/<unit>/registers.toml` per block. `generated/` holds what is generated from them: C headers, a Rust crate, Python decode modules, JSON and a genxml export, and each block's reference page is `devices/<unit>/registers.md`. Do not edit the generated files. Change `registers.toml`, then run `retools/tools/defs/defs-gen` and `retools/tools/defs/defs-check --build`. [AGENTS.md](AGENTS.md) describes the layout.

## Documentation index

Every tracked Markdown page under `devices/`, `platforms/`, `software/`, `evidence/`, `questions/` and `references/`, and the top-level Markdown files, grouped by subject.
Each line takes its description from the page's own title or opening sentence.

### Start here

- [AGENTS.md](AGENTS.md): SGI O2 CRIME reverse-engineering project: goal, evidence rules, working rules
- [evidence/irix-files.md](evidence/irix-files.md): IRIX files needed for SGI O2 (CRIME) reverse engineering, paths only
- [README.md](README.md): Reverse-engineering workspace for the SGI O2 CRIME graphics and GBE
- [evidence/coverage.md](evidence/coverage.md): Map of what the CRIME and GBE workspace covers and what is next
- [questions/README.md](questions/README.md): Facts no source read so far settles, with routes already tried

### Devices: CRIME, GBE, MACE and VICE

- [devices/re/memory.md](devices/re/memory.md): Rendering TLB formats, texture levels, interrupts and CPU windows
- [devices/mte/mte.md](devices/mte/mte.md): MTE copies, fills and the address word, as IRIX drives them
- [devices/re/de-2d-drawing.md](devices/re/de-2d-drawing.md): Rendering engine 2D drawing: coordinates, primitives, stipple, logic ops and clip order
- [devices/re/pixel-arithmetic.md](devices/re/pixel-arithmetic.md): Pixel arithmetic: depth, blending and texel filtering
- [devices/gbe/gbe.md](devices/gbe/gbe.md): GBE display timing: how IRIX turns a video format into timing registers
- [devices/mace_video/mace-video.md](devices/mace_video/mace-video.md): MACE video: capture, playback and framelock
- [devices/mace_audio/mace-audio.md](devices/mace_audio/mace-audio.md): MACE audio interface and AD1843 codec: DMA rings, sample formats, codec timing and routing
- [devices/mace_ps2/mace-ps2.md](devices/mace_ps2/mace-ps2.md): MACE PS/2 keyboard and mouse ports: address map, serial frame, interrupt levels and reset
- [devices/mace_serial_dma/mace-serial-dma.md](devices/mace_serial_dma/mace-serial-dma.md): MACE serial port DMA channels: ring placement, packet formats, interrupt causes and open questions
- [devices/mace_ethernet/mace-ethernet.md](devices/mace_ethernet/mace-ethernet.md): MACE Fast-Ethernet: MAC, interrupt, DMA ring and receive FIFO registers, message formats, PHY bus and the diagnostic port
- [devices/vice/vice.md](devices/vice/vice.md): VICE: the imaging and compression engine

### Platform: O2 (IP32)

- [platforms/ip32/mace-base.md](platforms/ip32/mace-base.md): MACE base: PCI bridge devices and interrupt map, PCI byte positions and windows, PCI reset, serial and RTC frontends

### Software: kernel driver

- [software/kernel/context.md](software/kernel/context.md): Context save and restore between clients, IRIX 6.5.30
- [software/kernel/reset.md](software/kernel/reset.md): Rendering engine initialisation, error recovery and kernel MTE helpers
- [software/kernel/ioctls.md](software/kernel/ioctls.md): Graphics ioctl interface (IRIX 6.5.30, O2)
- [software/kernel/functions.md](software/kernel/functions.md): Routines of the IRIX 6.5.30 graphics kernel objects, grouped by role

### Software: OpenGL driver

- [software/opengl/pixel-transfer.md](software/opengl/pixel-transfer.md): Pixel transfer: DrawPixels, ReadPixels and the kernel pixel DMA
- [software/opengl/opengl.md](software/opengl/opengl.md): libGLcore to CRIME command stream: vertices to rendering-engine writes
- [software/opengl/gl-entry-points.md](software/opengl/gl-entry-points.md): libGLcore: the OpenGL entry points, grouped by specified role
- [software/opengl/glcore-immediate-entry-points.md](software/opengl/glcore-immediate-entry-points.md): libGLcore immediate-mode entry points and display-list vector state
- [software/opengl/libglcore.md](software/opengl/libglcore.md): libGLcore internal routines grouped by compilation unit
- [software/opengl/libglcore-o32.md](software/opengl/libglcore-o32.md): o32 OpenGL driver routines whose code differs from the N32 build
- [software/opengl/capability-trees.md](software/opengl/capability-trees.md): Capability-enable value trees in libGLcore, starting at `__glim_Enable`
- [software/opengl/sample-implementation.md](software/opengl/sample-implementation.md): Public-source code in libGLcore, from the SGI OpenGL sample

### Software: X server and board module

- [software/xsgi/xmodule.md](software/xsgi/xmodule.md): X module (crm.so) functions by role and group
- [software/xsgi/nfb-layer.md](software/xsgi/nfb-layer.md): SGI frame-buffer layer in the X module (nfb)
- [software/xsgi/xsgi.md](software/xsgi/xsgi.md): The X server (Xsgi): board bring-up and resource-manager layer
- [software/xsgi/xsgivc.md](software/xsgi/xsgivc.md): Video-control client library (libXsgivc.so) for the X server extension
- [software/xsgi/sample-server.md](software/xsgi/sample-server.md): Sample-server code in the X module (crm.so)

### Evidence: binaries, messages and release comparison

- [evidence/hw-explanations-crime-p1.md](evidence/hw-explanations-crime-p1.md): Hardware-facing routine explanations for CRIME and neighbours, pilot 1
- [evidence/binaries.md](evidence/binaries.md): Binaries in scope: what each file is and why it is read
- [evidence/diagnostic-messages.md](evidence/diagnostic-messages.md): CRIME, MACE and GBE diagnostic messages
- [evidence/release-6522-compare.md](evidence/release-6522-compare.md): IRIX 6.5.22 against 6.5.30: the in-scope CRIME files

### References: published sources

- [references/documents/published-sources.md](references/documents/published-sources.md): Published sources: patents, technical reports and white papers
- [references/documents/README.md](references/documents/README.md): Stored copies of published sources, with SHA-256 checksums

### Not listed one by one

- `devices/<unit>/README.md` and `devices/<unit>/registers.md`: one README and one generated register table per unit, listed in each directory
- Stored PDF, HTML and text copies under `references/documents/` (`specs/`, `patents/`, `papers/`, `reports/`, `manuals/`, 22 files): listed in [references/documents/README.md](references/documents/README.md)
- [evidence/inventory/README.md](evidence/inventory/README.md): Inventory: generated tables, row detection and grading rules. The generated tables under `evidence/inventory/` (`*.tsv`, nine files) and `evidence/release-6522-compare.tsv` are not indexed one by one
- `evidence/instruction-readings-crime-g1.md` to `g9` (eight generated readings from hostfacts, no `g8`): skipped as generated
- `evidence/routines/`: the routine readings, one page per batch

Licence: BSD-3-Clause, see [LICENSE](LICENSE). The scripts descend from gr4's
and keep its notice in [retools/tools/LICENSE-gr4](retools/tools/LICENSE-gr4).
