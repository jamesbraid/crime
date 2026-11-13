# re

CRIME rendering engine interface buffer, translation tables, pixel pipeline registers and status.

Source: published CRIME 1.5 draft specification, public NetBSD O2 framebuffer driver, and shipped IRIX software readings.

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Pages

- [Rendering engine: ordinary 2D drawing](de-2d-drawing.md)
- [Rendering TLB formats](memory.md)
- [Pixel arithmetic: depth, blending and texel filtering](pixel-arithmetic.md)
- [CRIME_RE.h, the annotated header](CRIME_RE.h)

## Used by

- [Context save and restore (IRIX 6.5.30, O2)](../../software/kernel/context.md)
- [Functions by role](../../software/kernel/functions.md)
- [Graphics ioctl interface (IRIX 6.5.30, O2)](../../software/kernel/ioctls.md)
- [Rendering engine initialisation and error recovery, and the kernel's use of the memory transfer engine](../../software/kernel/reset.md)
- [The o32 OpenGL driver (`IP32CRM`): routines whose code differs from the N32 build](../../software/opengl/libglcore-o32.md)
- [libGLcore internal routines by unit](../../software/opengl/libglcore.md)
- [libGLcore to CRIME command stream](../../software/opengl/opengl.md)
- [Pixel transfer: DrawPixels, ReadPixels and the kernel pixel DMA](../../software/opengl/pixel-transfer.md)
- [X module functions by role](../../software/xsgi/xmodule.md)
