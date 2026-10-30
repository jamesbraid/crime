// List every call to a register-store helper whose address is a base pointer
// plus a constant, as a tab-separated table: program, function, call address,
// offset, stored value.
//
// The kernel driver writes the board's registers through one helper
// (gfx_pio_write_32(address, value)) where address = per-pipe base word
// loaded from the state record + a constant. A cross-reference listing of
// the helper finds every call; the decompiler's constant folding turns each
// first argument into base+offset, so this needs no instruction patterns.
//
// Arguments: OUTFILE [HELPER [MINOFFSET [MAXOFFSET]]]
//   HELPER     name of the store helper         (default gfx_pio_write_32)
//   MINOFFSET  keep offsets >= this, hex        (default 0, keep everything)
//   MAXOFFSET  keep offsets <  this, hex        (default no limit)
// Offsets that do not fold to base+constant are printed as "?" with the
// expression, so an unrecovered call is visible rather than dropped. Output is
// appended to OUTFILE so one run over many programs gives one table.
// @category RE
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.model.pcode.*;
import java.io.*;
import java.util.*;

public class FindWindowStores extends GhidraScript {
    @Override
    public void run() throws Exception {
        String[] a = getScriptArgs();
        String helper = a.length > 1 ? a[1] : "gfx_pio_write_32";
        long min = a.length > 2 ? Long.parseLong(a[2], 16) : 0;
        long max = a.length > 3 ? Long.parseLong(a[3], 16) : Long.MAX_VALUE;
        PrintWriter out = new PrintWriter(new FileWriter(a[0], true));
        DecompInterface di = new DecompInterface();
        di.openProgram(currentProgram);
        String prog = currentProgram.getName();
        for (Function f : currentProgram.getFunctionManager().getFunctions(true)) {
            if (f.isExternal() || f.isThunk()) continue;
            DecompileResults r = di.decompileFunction(f, 60, monitor);
            if (!r.decompileCompleted()) {
                out.println(prog + "\t" + f.getName() + "\t?\t?\tdecompile failed");
                continue;
            }
            HighFunction hf = r.getHighFunction();
            Iterator<PcodeOpAST> it = hf.getPcodeOps();
            while (it.hasNext()) {
                PcodeOpAST op = it.next();
                if (op.getOpcode() != PcodeOp.CALL) continue;
                Address t = op.getInput(0).getAddress();
                Function callee = getFunctionAt(t);
                if (callee == null || !callee.getName().equals(helper)) continue;
                if (op.getNumInputs() < 2) continue;
                Object[] e = eval(op.getInput(1), 0);
                String off, expr = "";
                if (e[0] instanceof Long) {
                    long v = (Long) e[0];
                    if (v < min || v >= max) continue;
                    off = "0x" + Long.toHexString(v);
                } else { off = "?"; expr = String.valueOf(e[0]); }
                String val = "?";
                if (op.getNumInputs() > 2) {
                    Object[] x = eval(op.getInput(2), 0);
                    if (x[0] instanceof Long) val = "0x" + Long.toHexString((Long) x[0]);
                }
                out.println(prog + "\t" + f.getName() + "\t" + op.getSeqnum().getTarget()
                    + "\t" + off + "\t" + val + (expr.isEmpty() ? "" : "\t" + expr));
            }
        }
        out.close();
    }

    // Value of a varnode as {Long constant offset from the base} or {String
    // description}. The base is any pointer loaded from a record (a LOAD whose
    // address is itself a pointer plus a constant), the way the helper's
    // callers fetch the register window.
    private Object[] eval(Varnode v, int depth) {
        if (v.isConstant()) return new Object[] { v.getOffset() };
        if (depth > 12 || v.getDef() == null) return new Object[] { "param/unknown" };
        PcodeOp d = v.getDef();
        switch (d.getOpcode()) {
            case PcodeOp.COPY: case PcodeOp.CAST: case PcodeOp.INT_ZEXT: case PcodeOp.INT_SEXT:
                return eval(d.getInput(0), depth + 1);
            case PcodeOp.INT_ADD: {
                Object[] x = eval(d.getInput(0), depth + 1), y = eval(d.getInput(1), depth + 1);
                if (x[0] instanceof Long && y[0] instanceof Long) return new Object[] { (Long) x[0] + (Long) y[0] };
                if (x[0] instanceof Long && "base".equals(y[0])) return new Object[] { x[0] };
                if (y[0] instanceof Long && "base".equals(x[0])) return new Object[] { y[0] };
                if (y[0] instanceof Long && x[0] instanceof String && ((String) x[0]).startsWith("base+"))
                    return new Object[] { y[0] };
                if (x[0] instanceof Long && y[0] instanceof String && ((String) y[0]).startsWith("base+"))
                    return new Object[] { x[0] };
                return new Object[] { "(" + x[0] + " + " + y[0] + ")" };
            }
            case PcodeOp.LOAD:
                // pointer fetched from a record: treat as the window base
                return new Object[] { "base" };
            default:
                return new Object[] { "op " + d.getMnemonic() };
        }
    }
}
