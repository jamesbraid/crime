# mte

CRIME memory transfer engine registers, address word and tile geometry.

Source: published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings.

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Pages

- [MTE: copies, fills and the address word](mte.md)
- [MTE.h, the annotated header](MTE.h)

## Used by

- [Context save and restore (IRIX 6.5.30, O2)](../../software/kernel/context.md)
- [Functions by role](../../software/kernel/functions.md)
- [Rendering engine initialisation and error recovery, and the kernel's use of the memory transfer engine](../../software/kernel/reset.md)
- [libGLcore to CRIME command stream](../../software/opengl/opengl.md)
- [Pixel transfer: DrawPixels, ReadPixels and the kernel pixel DMA](../../software/opengl/pixel-transfer.md)
- [X module functions by role](../../software/xsgi/xmodule.md)
