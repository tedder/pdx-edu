package mini;

import compiler.Failure;

/** Abstract syntax for bitwise exclusive or expressions (^).
 */
class BXor extends BinBitwiseExpr {
    BXor(Expr left, Expr right) {
        super(left, right);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "BXor, ^"; }
}
