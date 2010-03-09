package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for less than or equal expressions.
 */
class Lte extends BinCompExpr {
    Lte(Expr left, Expr right) {
        super(left, right);
    }

    /** Generate assembly language code for this expression that will
     *  evaluate the expression when it is executed and leave the result
     *  in the specified free register, preserving any lower numbered
     *  registers in the process.
     */
    public void compileExpr(Assembly a, int free) {
        compileCondValue(a, "jle", free);
    }

    /** Generate code that will evaluate this (boolean-valued) expression
     *  and jump to the specified label if the result is true.
     */
    void branchTrue(Assembly a, int free, String lab) {
        compileCond(a, free);
        a.emit("jle", lab);
    }

    /** Generate code that will evaluate this (boolean-valued) expression
     *  and jump to the specified label if the result is false.
     */
    void branchFalse(Assembly a, int free, String lab) {
        compileCond(a, free);
        a.emit("jg", lab);
    }
}
