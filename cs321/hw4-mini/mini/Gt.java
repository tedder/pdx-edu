package mini;

import compiler.Failure;

/** Abstract syntax for greater than expressions.
 */
class Gt extends BinCompExpr {
    Gt(Expr left, Expr right) {
        super(left, right);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Gt, >"; }
}
