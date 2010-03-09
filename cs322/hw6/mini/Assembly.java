package mini;

import compiler.*;
import compiler.Failure;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

/** Provides a simple mechanism for assembly language output.
 */
public class Assembly {

    /** Set this flag to true for an mjc implementation on Linux.
     *  Some minor changes in the format of generated assembly code
     *  are needed to accomodate platform differences between Linux
     *  and Windows.  Moreover, Linux seems to object to programs
     *  that trash ebx, so we avoid using that register on Linux boxes.
     */
    public static final boolean LINUX = true;

    /** Used to store the output stream for this assembly file.
     */
    private PrintWriter out;

    /** A private constructor, used from the assembleToFile() method.
     */
    private Assembly(PrintWriter out) {
        this.out = out;
    }

    /** Specifies the name of the entry point to the compiled code.
     */
    static final String entry = "mini_main";

    /** A convenience method that creates an assembly object for
     *  a named output file.
     */
    public static Assembly assembleToFile(String name) {
        try {
            PrintWriter out = new PrintWriter(new FileWriter(name));
            Assembly a = new Assembly(out);
            a.emit(".file",  "\"" + name + "\"");
            a.emit(".globl", a.name(Assembly.entry));
            return a;
        } catch (IOException e) {
            return null;
        }
    }

    /** Close this Assembly object and free up associated resources.
     */
    public void close() {
        out.close();
        out = null;
    }

    /** A counter that is used to generate new labels; the counter is
     *  incremented each time a new label is produced.
     */
    private int labelCounter = 0;

    /** Generate a string for a label from an integer input.
     *  We require that distinct inputs produce distinct outputs
     *  and that none of the generated label names can clash with
     *  names in user programs.
     */
    public String label(int l) {
        return "l" + l;
    }

    /** Return a fresh (i.e., previously unused) label name.
     */
    public String newLabel() {
        return label(labelCounter++);
    }

    /** Output a label at the beginning of a line.
     */
    public void emitLabel(String name) {
        out.print(name);
        out.println(":");
    }

    /** Output a function/variable name using the appropriate
     *  platform naming conventions with respect to underscores.
     */
    public String name(String n) {
        return LINUX ? n : ("_" + n);
    }
    private String[] regs = LINUX
        ? new String[] { "%eax",         "%ecx", "%esi", "%edi" }
        : new String[] { "%eax", "%ebx", "%ecx", "%esi", "%edi" };
    private int numRegs = regs.length;

    /** Return the name of the physical register corresponding to a
     *  specific logical register.
     */
    public String reg(int free) {
        return regs[free % numRegs];
    }

    /** Determine whether spilling is required to access the specified
     *  logical register (i.e., whether the same physical register is
     *  already being used to hold the value of a different, lower index
     *  logical register.
     */
    public boolean spillFor(int free) {
        return (free>=numRegs);
    }

    /** Output code to preserve the value in a register that is
     *  currently in use by pushing its value to the stack.  This
     *  allows that same register to be used temporarily to hold
     *  the value for a different logical register.
     */
    public void spill(int free) {
        if (spillFor(free)) {
            emit("pushl", reg(free));
        }
    }

    /** Output code to restore a register to its previously
     *  held value, if any, by popping the old value off of
     *  the stack.
     */
    public void unspill(int free) {
        if (spillFor(free)) {
            emit("popl", reg(free));
        }
    }

    /** Emit an instruction with no operands.
     */
    public void emit(String op) {
        out.println("\t" + op);
    }

    /** Emit an instruction with one operand.
     */
    public void emit(String op, String op1) {
        out.println("\t" + op + "\t" + op1);
    }

    /** Emit an instruction with two operands.
     */
    public void emit(String op, String op1, String op2) {
        out.println("\t" + op + "\t" + op1 + "," + op2);
    }

    /** Return a number as a string for use in contexts where only
     *  a number is allowed and hence no special characters are
     *  required to distinguish an addressing mode.
     */
    public String number(int v) {
        return Integer.toString(v);
    }

    /** Return a string for an operand using immediate addressing.
     */
    public String immed(int v) {
        return "$" + v;
    }

    /** Return a reference to a memory location using indirect
     *  addressing.
     */
    public String indirect(int n, String s) {
        if (n==0) {
            return "(" + s + ")";
        } else {
            return n + "(" + s + ")";
        }
    }

    /** In the current system, we assume that all values can be represented
     *  by a single word whose size in bytes is given by the WORDSIZE constant.
     */
    public static final int WORDSIZE = 4;

    /** Output the prologue code section at the start of a program.
     */
    public void emitPrologue(int localBytes) {
        emit("pushl", "%ebp");
        emit("movl",  "%esp", "%ebp");
        if (localBytes>0) {
            emit("subl", immed(localBytes), "%esp");
        }
    }

    /** return a string that can be used to reference the memory
     *  location that is being used for a specific variable.
     */
    public String varRef(VarEnv ve) {
        return indirect(ve.getOffset(), "%ebp");
    }

    /** Output the epilogue code section at the end of a program.
     */
    public void emitEpilogue() {
        emit("movl", "%ebp", "%esp");
        emit("popl", "%ebp");
        emit("ret");
    }
}
