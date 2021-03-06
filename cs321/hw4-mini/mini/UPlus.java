package mini;

import compiler.Failure;

/** Abstract syntax for unary plus expressions.
 */
class UPlus extends UnArithExpr {
    UPlus(Expr exp) {
        super(exp);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Unary plus"; }
}
