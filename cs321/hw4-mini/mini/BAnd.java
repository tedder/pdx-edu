package mini;

import compiler.Failure;

/** Abstract syntax for bitwise and expressions (&).
 */
class BAnd extends BinBitwiseExpr {
    BAnd(Expr left, Expr right) {
        super(left, right);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "BAnd, &"; }
}
