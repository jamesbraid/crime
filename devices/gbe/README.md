# gbe

GBE display back end register words, tables and offsets.

Source: published GBE 1.1 specification, public Linux and NetBSD O2 framebuffer drivers, and shipped IRIX software readings.

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Pages

- [GBE display timing](gbe.md)
- [GBE.h, the annotated header](GBE.h)

## Used by

- [Context save and restore (IRIX 6.5.30, O2)](../../software/kernel/context.md)
- [Functions by role](../../software/kernel/functions.md)
- [Graphics ioctl interface (IRIX 6.5.30, O2)](../../software/kernel/ioctls.md)
- [X module functions by role](../../software/xsgi/xmodule.md)
