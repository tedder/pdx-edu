package mini;


/** Abstract syntax for bitwise exclusive or expressions (^).
 */
class BXor extends BinExpr {
    BXor(Expr left, Expr right) {
        super(left, right);
    }

    /** Return a string that provides a simple description of this
     *  particular type of operator node.
     */
    String label() { return "BXor, ^"; }
}
