package mini;

import compiler.Failure;

/** Abstract syntax for less than expressions.
 */
class Lt extends BinCompExpr {
    Lt(Expr left, Expr right) {
        super(left, right);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "Lt, <"; }
}
