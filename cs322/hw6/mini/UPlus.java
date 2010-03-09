package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for unary plus expressions.
 */
class UPlus extends UnArithExpr {
    UPlus(Expr exp) {
        super(exp);
    }

    /** Generate assembly language code for this expression that will
     *  evaluate the expression when it is executed and leave the result
     *  in the specified free register, preserving any lower numbered
     *  registers in the process.
     */
    public void compileExpr(Assembly a, int free) {
        // unary plus doesn't actually do anything!
        exp.compileExpr(a, free);
    }
}
