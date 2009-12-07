package mini;

import compiler.Failure;

/** Abstract syntax for unary minus expressions.
 */
class UMinus extends UnArithExpr {
    UMinus(Expr exp) {
        super(exp);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Unary minus"; }
}
