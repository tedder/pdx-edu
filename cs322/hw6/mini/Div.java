package mini;

import compiler.*;
import compiler.Failure;

/** Abstract syntax for divide expressions.
 */
class Div extends BinArithExpr {
    Div(Expr left, Expr right) {
        super(left, right);
    }

    /** Generate assembly language code for this expression that will
     *  evaluate the expression when it is executed and leave the result
     *  in the specified free register, preserving any lower numbered
     *  registers in the process.
     */
    public void compileExpr(Assembly a, int free) {
        // TODO: oops, this is not yet implemented!
    }
}
