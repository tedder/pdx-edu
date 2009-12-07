package mini;

import compiler.Failure;

/** Abstract syntax for divide expressions.
 */
class Div extends BinArithExpr {
    Div(Expr left, Expr right) {
        super(left, right);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Div, /"; }
}
