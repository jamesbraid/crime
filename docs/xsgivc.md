# Video-control client library (`libXsgivc.so`)

`libXsgivc.so` is the client side of the X server's video-control extension: the interface through which `gfxinit`, `setmon`, `dualchannel` and the GL window-system layer ask the server to change formats, gamma maps, sync and output levels. It touches no hardware itself ([gbe.md](gbe.md): it imports only the Xlib transport and no file or device calls), so every effect on GBE happens in the server and the X module. This chapter gives each routine's request so a reader can follow a client action to the server code that handles it.

Source: the N32 build `usr/lib32/libXsgivc.so` of IRIX 6.5.30, `objdump -d`. The o32 (`usr/lib/`) and 64-bit (`usr/lib64/`) builds export the same routine names. Labels: **established** (read from the routine), **inferred** (from the name or the Xlib extension conventions).

## Request encoding

Established for every request routine: the routine looks up the display's extension record (`find_display`), reserves a request in the display buffer, writes the extension's major opcode (taken from the record) at byte 0, the minor opcode at byte 1 and the request length in 4-byte words at bytes 2-3, fills the body, and for queries waits for the reply (`_XReply`). The minor opcode below is the constant stored at byte 1; the length is the fixed part the routine writes (variable-length requests add their data after it).

| Minor | Routine | Fixed length (words) |
|---:|---|---:|
| 0 | `XSGIvcQueryVersion` (sends client version 1.3 in the body) | 2 |
| 1 | `XSGIvcQueryVideoScreenInfo` | 2 |
| 2 | `XSGIvcListVideoFormats` | 6 |
| 3 | `XSGIvcListVideoFormatCombinations` | 3 |
| 4 | `XSGIvcListVideoFormatsInCombination` | 3 |
| 5 | `XSGIvcLoadVideoFormat` | 5 |
| 6 | `XSGIvcLoadVideoFormatCombination` | 3 |
| 7 | `XSGIvcDisableChannel` | 3 |
| 8 | `XSGIvcQueryChannelInfo` | 3 |
| 9 | `XSGIvcQueryMonitorName` | 3 |
| 10 | `SetOneControl` (the common set routine, below) | 5 |
| 11 | `QueryOneControl` (the common query routine, below) | 4 |
| 12 | `XSGIvcSetOutputSync` | 5 |
| 13 | `XSGIvcQueryOutputSync` | 4 |
| 14 | `XSGIvcSetScreenInputSyncSource` | 4 |
| 15 | `XSGIvcQueryScreenInputSyncSource` | 2 |
| 16 | `XSGIvcSetPlatformParameter` | 5 |
| 17 | `XSGIvcQueryPlatformParameter` | 5 |
| 18 | `XSGIvcQueryScreenGammaMaps` | 2 |
| 19 | `XSGIvcQueryGammaMap` | 3 |
| 20 | `XSGIvcStoreGammaColors8` | 5 |
| 21 | `XSGIvcStoreGammaColors16` | 5 |
| 22 | `XSGIvcQueryGammaColors` | 4 |
| 23 | `XSGIvcSelectInput` | 3 |
| 24 | `XSGIvcSetChannelInputRectangle`, `XSGIvcQueryBestChannelRectangle` (one request serves both; the routines differ in the body and in whether they read a reply) | 8 |
| 25 | `XSGIvcSendMonitorCommand`, `XSGIvcSendMonitorQuery` | 5 |
| 26 | `XSGIvcQueryMonitorBaseProtocol` | 3 |
| 27 | `XSGIvcSetScreenExternalSyncSource` | 3 |
| 28 | `XSGIvcQueryScreenExternalSyncSource` | 2 |
| 29 | `XSGIvcQueryExternalSyncSourceName` | 3 |
| 30 | `XSGIvcNVListVideoFormats` | 6 |
| 31 | `XSGIvcNVListVideoFormatCombinations` | 4 |
| 32 | `XSGIvcNVLoadVideoFormat` | 7 |
| 33 | `XSGIvcNVLoadVideoFormatCombination` | 3 |
| 34 | `XSGIvcLoadVideoFormatByName`, `XSGIvcNVLoadVideoFormatByName` | 5 |
| 35 | `XSGIvcInitMonitorBaseProtocol` | 3 |
| 36 | `XSGIvcMultiCursorSetMode` | 2 |

The `NV` routines are a second set of format requests with their own minor opcodes (30 to 33) beside the plain ones (2, 3, 5, 6); both name forms of the load-by-name request share 34. What distinguishes the two sets is not read here (inferred from the name: a non-volatile form that the server records as the default format).

## Output controls

Established: the output-level routines are two-instruction wrappers that pass a control number to the common routines `QueryOneControl` (minor 11) and `SetOneControl` (minor 10):

| Control | Query | Set |
|---:|---|---|
| 1 | `XSGIvcQueryOutputGain` | `XSGIvcSetOutputGain` |
| 6 | `XSGIvcQueryOutputPedestal` | `XSGIvcSetOutputPedestal` |
| 7 | `XSGIvcQueryOutputPhaseH` | `XSGIvcSetOutputPhaseH` |
| 8 | `XSGIvcQueryOutputPhaseSCH` | `XSGIvcSetOutputPhaseSCH` |
| 9 | `XSGIvcQueryOutputPhaseV` | `XSGIvcSetOutputPhaseV` |
| 10 | `XSGIvcQueryChannelGammaMap` | `XSGIvcSetChannelGammaMap` |
| 11 | `XSGIvcQueryOutputBlanking` | `XSGIvcSetOutputBlanking` |

The gain routines are longer than the others because they pass a component record rather than a single value (established: they build the argument on the stack before the call).

## Helpers

- `find_display`: returns the per-display extension record, creating it on first use; every request routine calls it first (established). `close_display` and `error_string` are the extension's close and error-text hooks, and `wire_to_event` converts the extension's events from the wire format (inferred from the names and the Xlib extension hook convention; `wire_to_event` also calls `find_display`, established).
- `GenerateVFList`, `ReadFormatInfo` and `ReadFieldInfo`: unpack the format lists that `XSGIvcListVideoFormats`, `XSGIvcNVListVideoFormats`, `XSGIvcListVideoFormatsInCombination` and `XSGIvcLoadVideoFormat` receive (established: those are their only callers, and `ReadFormatInfo` calls `ReadFieldInfo`). `XSGIvcFreeVideoFormatInfo` frees what they return (inferred from the name; it returns at once for a null argument, established). `matchWild` matches a format name against a pattern with wildcards (inferred from the name). `_stub` is the shared-object start-up stub (inferred).
