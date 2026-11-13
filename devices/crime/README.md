# crime

CRIME memory controller and CPU-interface registers, and the interrupt input bit positions.

Source: published CRIME 1.5 draft specification (rev 0.3), public Linux and NetBSD O2 drivers, and shipped IRIX software readings.

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Pages

- [CRIME.h, the annotated header](CRIME.h)

## Used by

- [Context save and restore (IRIX 6.5.30, O2)](../../software/kernel/context.md)
- [Functions by role](../../software/kernel/functions.md)
- [Graphics ioctl interface (IRIX 6.5.30, O2)](../../software/kernel/ioctls.md)
- [libGLcore: the OpenGL entry points](../../software/opengl/gl-entry-points.md)
- [libGLcore internal routines by unit](../../software/opengl/libglcore.md)
- [libGLcore to CRIME command stream](../../software/opengl/opengl.md)
- [SGI frame-buffer layer in the X module (`nfb`)](../../software/xsgi/nfb-layer.md)
