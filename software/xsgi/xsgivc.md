# Video-control client library (`libXsgivc.so`)

`libXsgivc.so` is the client side of the X server's video-control extension: the interface through which `gfxinit`, `setmon`, `dualchannel` and the GL window-system layer ask the server to change formats, gamma maps, sync and output levels. It touches no hardware itself ([gbe.md](../../devices/gbe/gbe.md): it imports only the Xlib transport and no file or device calls), so every effect on GBE happens in the server and the X module. This chapter gives each routine's request so a reader can follow a client action to the server code that handles it.

Source: the N32 build `usr/lib32/libXsgivc.so` of IRIX 6.5.30, `objdump -d`. The o32 (`usr/lib/`) and 64-bit (`usr/lib64/`) builds export the same routine names. Labels: **established** (read from the routine), **inferred** (from the name or the Xlib extension conventions).

## Request encoding

Established for every request routine: the routine looks up the display's extension record (`find_display`), reserves a request in the display buffer, writes the extension's major opcode (taken from the record) at byte 0, the minor opcode at byte 1 and the request length in 4-byte words at bytes 2-3, fills the body, and for queries waits for the reply (`_XReply`). The minor opcode below is the constant stored at byte 1; the length is the fixed part the routine writes (variable-length requests add their data after it).

| Minor | Routine | Fixed length (words) | Grade |
|---:|---|---:|---|
| 0 | `XSGIvcQueryVersion` (sends client version 1.3 in the body) | 2 | established |
| 1 | `XSGIvcQueryVideoScreenInfo` | 2 | established |
| 2 | `XSGIvcListVideoFormats` | 6 | established |
| 3 | `XSGIvcListVideoFormatCombinations` | 3 | established |
| 4 | `XSGIvcListVideoFormatsInCombination` | 3 | established |
| 5 | `XSGIvcLoadVideoFormat` | 5 | established |
| 6 | `XSGIvcLoadVideoFormatCombination` | 3 | established |
| 7 | `XSGIvcDisableChannel` | 3 | established |
| 8 | `XSGIvcQueryChannelInfo` | 3 | established |
| 9 | `XSGIvcQueryMonitorName` | 3 | established |
| 10 | `SetOneControl` (the common set routine, below) | 5 | established |
| 11 | `QueryOneControl` (the common query routine, below) | 4 | established |
| 12 | `XSGIvcSetOutputSync` | 5 | established |
| 13 | `XSGIvcQueryOutputSync` | 4 | established |
| 14 | `XSGIvcSetScreenInputSyncSource` | 4 | established |
| 15 | `XSGIvcQueryScreenInputSyncSource` | 2 | established |
| 16 | `XSGIvcSetPlatformParameter` | 5 | established |
| 17 | `XSGIvcQueryPlatformParameter` | 5 | established |
| 18 | `XSGIvcQueryScreenGammaMaps` | 2 | established |
| 19 | `XSGIvcQueryGammaMap` | 3 | established |
| 20 | `XSGIvcStoreGammaColors8` | 5 | established |
| 21 | `XSGIvcStoreGammaColors16` | 5 | established |
| 22 | `XSGIvcQueryGammaColors` | 4 | established |
| 23 | `XSGIvcSelectInput` | 3 | established |
| 24 | `XSGIvcSetChannelInputRectangle`, `XSGIvcQueryBestChannelRectangle` (one request serves both; the routines differ in the body and in whether they read a reply) | 8 | established |
| 25 | `XSGIvcSendMonitorCommand`, `XSGIvcSendMonitorQuery` | 5 | established |
| 26 | `XSGIvcQueryMonitorBaseProtocol` | 3 | established |
| 27 | `XSGIvcSetScreenExternalSyncSource` | 3 | established |
| 28 | `XSGIvcQueryScreenExternalSyncSource` | 2 | established |
| 29 | `XSGIvcQueryExternalSyncSourceName` | 3 | established |
| 30 | `XSGIvcNVListVideoFormats` | 6 | established |
| 31 | `XSGIvcNVListVideoFormatCombinations` | 4 | established |
| 32 | `XSGIvcNVLoadVideoFormat` | 7 | established |
| 33 | `XSGIvcNVLoadVideoFormatCombination` | 3 | established |
| 34 | `XSGIvcLoadVideoFormatByName`, `XSGIvcNVLoadVideoFormatByName` | 5 | established |
| 35 | `XSGIvcInitMonitorBaseProtocol` | 3 | established |
| 36 | `XSGIvcMultiCursorSetMode` | 2 | established |

The `NV` routines are a second set of format requests with their own minor opcodes (30 to 33) beside the plain ones (2, 3, 5, 6); both name forms of the load-by-name request share 34. What distinguishes the two sets is not read here (inferred from the name: a non-volatile form that the server records as the default format).

## Output controls

Established: the output-level routines are two-instruction wrappers that pass a control number to the common routines `QueryOneControl` (minor 11) and `SetOneControl` (minor 10):

| Control | Query | Set | Grade |
|---:|---|---|---|
| 1 | `XSGIvcQueryOutputGain` | `XSGIvcSetOutputGain` | established |
| 6 | `XSGIvcQueryOutputPedestal` | `XSGIvcSetOutputPedestal` | established |
| 7 | `XSGIvcQueryOutputPhaseH` | `XSGIvcSetOutputPhaseH` | established |
| 8 | `XSGIvcQueryOutputPhaseSCH` | `XSGIvcSetOutputPhaseSCH` | established |
| 9 | `XSGIvcQueryOutputPhaseV` | `XSGIvcSetOutputPhaseV` | established |
| 10 | `XSGIvcQueryChannelGammaMap` | `XSGIvcSetChannelGammaMap` | established |
| 11 | `XSGIvcQueryOutputBlanking` | `XSGIvcSetOutputBlanking` | established |

The gain routines are longer than the others because they pass a component record rather than a single value (established: they build the argument on the stack before the call).

## Helpers

- `find_display`: returns the per-display extension record, creating it on first use; every request routine calls it first (established). `close_display` and `error_string` are the extension's close and error-text hooks, and `wire_to_event` converts the extension's events from the wire format (inferred from the names and the Xlib extension hook convention; `wire_to_event` also calls `find_display`, established).
- `GenerateVFList`, `ReadFormatInfo` and `ReadFieldInfo`: unpack the format lists that `XSGIvcListVideoFormats`, `XSGIvcNVListVideoFormats`, `XSGIvcListVideoFormatsInCombination` and `XSGIvcLoadVideoFormat` receive (established: those are their only callers, and `ReadFormatInfo` calls `ReadFieldInfo`). `XSGIvcFreeVideoFormatInfo` frees what they return (inferred from the name; it returns at once for a null argument, established). `matchWild` matches a format name against a pattern with wildcards (inferred from the name). `_stub` is the shared-object start-up stub (inferred).
