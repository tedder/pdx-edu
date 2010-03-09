package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for subtract expressions.
 */
class Sub extends BinArithExpr {
    Sub(Expr left, Expr right) {
        super(left, right);
    }

    /** Generate assembly language code for this expression that will
     *  evaluate the expression when it is executed and leave the result
     *  in the specified free register, preserving any lower numbered
     *  registers in the process.
     */
    public void compileExpr(Assembly a, int free) {
        compileOp(a, "subl", free);
    }
}
